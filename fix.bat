@echo off
setlocal EnableExtensions EnableDelayedExpansion

title HUBBOOST - BAT AUTO FIX
color 0B

echo.
echo ============================================================
echo                 HUBBOOST - BAT AUTO FIX
echo ============================================================
echo.
echo Ce programme va :
echo.
echo   [1] Chercher les fichiers .BAT et .CMD
echo   [2] Creer une sauvegarde avant modification
echo   [3] Corriger certaines erreurs CMD connues
echo   [4] Verifier les scripts apres correction
echo.
echo Les sauvegardes seront placees dans :
echo BAT_BACKUPS
echo.
pause

set "ROOT=%~dp0"
set "BACKUP=%ROOT%BAT_BACKUPS"

if not exist "%BACKUP%" (
    mkdir "%BACKUP%" >nul 2>&1
)

echo.
echo ============================================================
echo [1/4] RECHERCHE DES SCRIPTS
echo ============================================================
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$root=$env:ROOT; $backup=$env:BACKUP; Get-ChildItem -LiteralPath $root -Recurse -File | Where-Object { $_.Extension -in '.bat','.cmd' -and $_.FullName -notlike ($backup+'\*') } | ForEach-Object { Write-Host ('  '+$_.FullName) }"

echo.
echo ============================================================
echo [2/4] ANALYSE ET CORRECTION
echo ============================================================
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$ErrorActionPreference='Stop'; ^
$root=$env:ROOT; ^
$backup=$env:BACKUP; ^
$files=Get-ChildItem -LiteralPath $root -Recurse -File | Where-Object { $_.Extension -in '.bat','.cmd' -and $_.FullName -notlike ($backup+'\*') }; ^
$checked=0; ^
$fixed=0; ^
foreach($f in $files) { ^
    $checked++; ^
    try { ^
        $raw=[IO.File]::ReadAllText($f.FullName); ^
        $text=$raw; ^
        $changes=New-Object System.Collections.Generic.List[string]; ^

        if($text -match '(?im)^\s*choice\s+/C\s+ONN\b') { ^
            $text=[regex]::Replace($text,'(?im)^\s*choice\s+/C\s+ONN\b','choice /C ON'); ^
            $changes.Add('choice /C ON -> choice /C ON'); ^
        } ^

        if($text -match '(?im)^\s*choice\s+/C\s+YNN\b') { ^
            $text=[regex]::Replace($text,'(?im)^\s*choice\s+/C\s+YNN\b','choice /C YN'); ^
            $changes.Add('choice /C YNN -> choice /C YN'); ^
        } ^

        if($text -match '(?im)^\s*setlocal\s*$') { ^
            $text=[regex]::Replace($text,'(?im)^\s*setlocal\s*$','setlocal EnableExtensions EnableDelayedExpansion'); ^
            $changes.Add('setlocal renforce'); ^
        } ^

        if($text -notmatch '(?im)^\s*@echo\s+off\b' -and $text -match '(?im)^\s*setlocal\b') { ^
            $text='@echo off'+[Environment]::NewLine+$text; ^
            $changes.Add('@echo off ajoute'); ^
        } ^

        if($text -ne $raw) { ^
            $relative=$f.FullName.Substring($root.Length); ^
            $safe=$relative.Replace('\','_').Replace(':','_'); ^
            $destination=Join-Path $backup ($safe+'.backup'); ^

            [IO.File]::WriteAllText( ^
                $destination, ^
                $raw, ^
                (New-Object Text.UTF8Encoding($false)) ^
            ); ^

            [IO.File]::WriteAllText( ^
                $f.FullName, ^
                $text, ^
                (New-Object Text.UTF8Encoding($false)) ^
            ); ^

            $fixed++; ^

            Write-Host ''; ^
            Write-Host ('[FIX] '+$f.FullName) -ForegroundColor Green; ^

            foreach($change in $changes) { ^
                Write-Host ('      '+$change); ^
            } ^
        } ^
        else { ^
            Write-Host ('[OK]  '+$f.FullName) -ForegroundColor Gray; ^
        } ^
    } ^
    catch { ^
        Write-Host ('[ERREUR] '+$f.FullName) -ForegroundColor Red; ^
        Write-Host ('         '+$_.Exception.Message) -ForegroundColor Red; ^
    } ^
} ^

Write-Host ''; ^
Write-Host '------------------------------------------------------------'; ^
Write-Host ('Scripts analyses : '+$checked); ^
Write-Host ('Scripts modifies  : '+$fixed); ^
Write-Host ('Sauvegardes       : '+$backup); ^
Write-Host '------------------------------------------------------------'"

echo.
echo ============================================================
echo [3/4] VERIFICATION
echo ============================================================
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$root=$env:ROOT; ^
$backup=$env:BACKUP; ^
$files=Get-ChildItem -LiteralPath $root -Recurse -File | Where-Object { $_.Extension -in '.bat','.cmd' -and $_.FullName -notlike ($backup+'\*') }; ^

foreach($f in $files) { ^

    $text=[IO.File]::ReadAllText($f.FullName); ^
    $issues=New-Object System.Collections.Generic.List[string]; ^

    if($text -match '(?im)choice\s+/C\s+ONN\b') { ^
        $issues.Add('choice /C ON'); ^
    } ^

    if($text -match '(?im)choice\s+/C\s+YNN\b') { ^
        $issues.Add('choice /C YNN'); ^
    } ^

    if($text -match '(?im)^\s*goto\s*$') { ^
        $issues.Add('GOTO vide'); ^
    } ^

    if($text -match '(?im)^\s*if\s+errorlevel\s*$') { ^
        $issues.Add('IF ERRORLEVEL incomplet'); ^
    } ^

    if($text -match '(?im)^\s*set\s+[^=]+=.*\|') { ^
        $issues.Add('pipe | potentiellement interprete par CMD'); ^
    } ^

    if($issues.Count -gt 0) { ^

        Write-Host ''; ^
        Write-Host ('[A VERIFIER] '+$f.FullName) -ForegroundColor Yellow; ^

        foreach($issue in $issues) { ^
            Write-Host ('      '+$issue) -ForegroundColor Yellow; ^
        } ^

    } ^
    else { ^

        Write-Host ('[VERIF OK] '+$f.FullName) -ForegroundColor Green; ^

    } ^
}"

echo.
echo ============================================================
echo [4/4] TERMINE
echo ============================================================
echo.
echo Les fichiers originaux modifies ont ete sauvegardes dans :
echo.
echo %BACKUP%
echo.
echo ============================================================
echo.
echo AUTO-FIX TERMINE.
echo.
echo Les problemes non corriges sont affiches avec :
echo [A VERIFIER]
echo.
pause

endlocal
