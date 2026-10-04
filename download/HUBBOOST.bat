@echo off
setlocal EnableExtensions EnableDelayedExpansion
chcp 65001 >nul
title HUBBOOST 500 - Optimiseur Windows
color 0B

set "HB_VERSION=HUBBOOST 500 - FINAL"
set "HB_LOG=%~dp0HUBBOOST-log.txt"

:main
cls
echo ================================================================
echo                       HUBBOOST 500
echo ================================================================
echo PC: %COMPUTERNAME%    Utilisateur: %USERNAME%
echo.
echo [I] Informations PC    [R] Maintenance prudente
echo [A] Aide               [0] Quitter
echo.
echo 500 options disponibles. Entrez un numero de 1 a 500.
echo Chaque option affiche ce qu'elle fait avant execution.
echo.
echo [001] DIAGNOSTIC         - Afficher la version de Windows
echo [002] DIAGNOSTIC         - Afficher les informations système
echo [003] DIAGNOSTIC         - Afficher le nom du PC
echo [004] DIAGNOSTIC         - Afficher le nom de l’utilisateur
echo [005] DIAGNOSTIC         - Afficher la configuration réseau
echo [006] DIAGNOSTIC         - Afficher les routes réseau
echo [007] DIAGNOSTIC         - Afficher les connexions réseau
echo [008] DIAGNOSTIC         - Tester la pile TCP/IP
echo [009] DIAGNOSTIC         - Tester la résolution DNS Microsoft
echo [010] DIAGNOSTIC         - Afficher le cache DNS
echo [011] DIAGNOSTIC         - Afficher le cache ARP
echo [012] DIAGNOSTIC         - Afficher les cartes réseau
echo [013] DIAGNOSTIC         - Afficher les adresses IP
echo [014] DIAGNOSTIC         - Afficher le processeur
echo [015] DIAGNOSTIC         - Afficher la mémoire RAM
echo [016] DIAGNOSTIC         - Afficher le GPU
echo [017] DIAGNOSTIC         - Afficher les disques
echo [018] DIAGNOSTIC         - Afficher les volumes
echo [019] DIAGNOSTIC         - Afficher les processus les plus gourmands
echo [020] DIAGNOSTIC         - Afficher les services en cours
echo [021] DIAGNOSTIC         - Afficher le plan d’alimentation actif
echo [022] DIAGNOSTIC         - Afficher les options d’alimentation
echo [023] DIAGNOSTIC         - Afficher les périphériques USB
echo [024] DIAGNOSTIC         - Afficher les périphériques en erreur
echo [025] DIAGNOSTIC         - Afficher les pilotes récemment chargés
echo [026] DIAGNOSTIC         - Afficher les pilotes signés
echo [027] DIAGNOSTIC         - Afficher les programmes au démarrage
echo [028] DIAGNOSTIC         - Afficher l’espace libre du disque système
echo [029] DIAGNOSTIC         - Afficher l’utilisation CPU actuelle
echo [030] DIAGNOSTIC         - Afficher l’utilisation RAM actuelle
echo [031] DIAGNOSTIC         - Afficher la température si le pilote l’expose
echo [032] DIAGNOSTIC         - Afficher l’uptime Windows
echo [033] DIAGNOSTIC         - Afficher le modèle du PC
echo [034] DIAGNOSTIC         - Afficher le BIOS
echo [035] DIAGNOSTIC         - Afficher la carte mère
echo [036] DIAGNOSTIC         - Afficher les écrans
echo [037] DIAGNOSTIC         - Afficher DirectX
echo [038] DIAGNOSTIC         - Ouvrir le Gestionnaire des tâches
echo [039] DIAGNOSTIC         - Ouvrir le Gestionnaire de périphériques
echo [040] DIAGNOSTIC         - Ouvrir les informations système
echo [041] MAINTENANCE        - Nettoyer les fichiers temporaires utilisateur
echo [042] MAINTENANCE        - Nettoyer le cache temporaire Windows
echo [043] MAINTENANCE        - Vider le cache DNS
echo [044] MAINTENANCE        - Réinitialiser le cache ARP
echo [045] MAINTENANCE        - Vérifier l’image Windows
echo [046] MAINTENANCE        - Analyser l’image Windows
echo [047] MAINTENANCE        - Vérifier les fichiers système
echo [048] MAINTENANCE        - Nettoyer le composant Windows
echo [049] MAINTENANCE        - Ouvrir Nettoyage de disque
echo [050] MAINTENANCE        - Ouvrir les paramètres de stockage
echo [051] MAINTENANCE        - Ouvrir Storage Sense
echo [052] MAINTENANCE        - Ouvrir les fichiers temporaires
echo [053] MAINTENANCE        - Ouvrir Windows Update
echo [054] MAINTENANCE        - Ouvrir les options avancées Windows Update
echo [055] MAINTENANCE        - Ouvrir l’historique Windows Update
echo [056] MAINTENANCE        - Ouvrir les applications installées
echo [057] MAINTENANCE        - Ouvrir les applications par défaut
echo [058] MAINTENANCE        - Ouvrir les options de démarrage
echo [059] MAINTENANCE        - Ouvrir les paramètres réseau
echo [060] MAINTENANCE        - Ouvrir les paramètres Wi-Fi
echo [061] MAINTENANCE        - Ouvrir les paramètres Ethernet
echo [062] MAINTENANCE        - Ouvrir les paramètres graphiques
echo [063] MAINTENANCE        - Ouvrir les paramètres d’affichage
echo [064] MAINTENANCE        - Ouvrir les paramètres de son
echo [065] MAINTENANCE        - Ouvrir les paramètres Bluetooth
echo [066] MAINTENANCE        - Ouvrir les paramètres USB
echo [067] MAINTENANCE        - Ouvrir les paramètres batterie
echo [068] MAINTENANCE        - Ouvrir les paramètres d’alimentation
echo [069] MAINTENANCE        - Ouvrir les paramètres de confidentialité
echo [070] MAINTENANCE        - Ouvrir les paramètres de confidentialité des applications
echo [071] MAINTENANCE        - Ouvrir les paramètres système
echo [072] MAINTENANCE        - Ouvrir les paramètres À propos
echo [073] MAINTENANCE        - Ouvrir les paramètres de récupération
echo [074] MAINTENANCE        - Ouvrir les paramètres de sauvegarde
echo [075] MAINTENANCE        - Ouvrir les paramètres de dépannage
echo [076] MAINTENANCE        - Ouvrir les paramètres de sécurité Windows
echo [077] MAINTENANCE        - Ouvrir Windows Security
echo [078] MAINTENANCE        - Ouvrir le planificateur de tâches
echo [079] MAINTENANCE        - Ouvrir les services Windows
echo [080] MAINTENANCE        - Ouvrir l’observateur d’événements
echo [081] MAINTENANCE        - Ouvrir le moniteur de ressources
echo [082] MAINTENANCE        - Ouvrir le moniteur de performances
echo [083] MAINTENANCE        - Ouvrir le gestionnaire de certificats utilisateur
echo [084] MAINTENANCE        - Ouvrir les connexions réseau
echo [085] MAINTENANCE        - Ouvrir les propriétés système
echo [086] MAINTENANCE        - Ouvrir les propriétés de la souris
echo [087] MAINTENANCE        - Ouvrir les propriétés du clavier
echo [088] MAINTENANCE        - Ouvrir les paramètres de date et heure
echo [089] MAINTENANCE        - Ouvrir les propriétés de son classiques
echo [090] MAINTENANCE        - Ouvrir les options Internet
echo [091] MAINTENANCE        - Ouvrir les polices
echo [092] MAINTENANCE        - Ouvrir le dossier Téléchargements
echo [093] MAINTENANCE        - Ouvrir le dossier Temp utilisateur
echo [094] MAINTENANCE        - Ouvrir le dossier Windows Temp
echo [095] MAINTENANCE        - Ouvrir le dossier Prefetch
echo [096] MAINTENANCE        - Ouvrir le dossier System32
echo [097] MAINTENANCE        - Ouvrir le dossier Drivers
echo [098] MAINTENANCE        - Ouvrir le dossier Logs Windows
echo [099] MAINTENANCE        - Ouvrir le dossier Minidump
echo [100] MAINTENANCE        - Afficher les fichiers temporaires volumineux
echo [101] MAINTENANCE        - Afficher les plus gros fichiers du dossier Windows Temp
echo [102] GAMING             - Activer le mode Jeu Windows
echo [103] GAMING             - Ouvrir la barre de jeu
echo [104] GAMING             - Ouvrir les captures Windows
echo [105] GAMING             - Ouvrir les paramètres du mode Jeu
echo [106] GAMING             - Ouvrir les paramètres graphiques avancés
echo [107] GAMING             - Ouvrir les paramètres de fréquence écran
echo [108] GAMING             - Ouvrir les paramètres HDR
echo [109] GAMING             - Ouvrir les paramètres d’affichage multiple
echo [110] GAMING             - Ouvrir les paramètres plein écran
echo [111] GAMING             - Afficher les processus GPU
echo [112] GAMING             - Afficher les applications Xbox installées
echo [113] GAMING             - Afficher les applications Game Bar
echo [114] GAMING             - Ouvrir le Microsoft Store
echo [115] GAMING             - Ouvrir Xbox
echo [116] GAMING             - Ouvrir les paramètres captures
echo [117] GAMING             - Ouvrir les paramètres jeux
echo [118] GAMING             - Afficher les FPS via Xbox Game Bar
echo [119] GAMING             - Afficher la latence réseau par ping
echo [120] GAMING             - Tester la latence Google
echo [121] GAMING             - Tester la perte de paquets
echo [122] GAMING             - Tracer la route vers Cloudflare
echo [123] GAMING             - Tracer la route vers Google
echo [124] GAMING             - Afficher les ports d’écoute
echo [125] GAMING             - Afficher les connexions TCP
echo [126] GAMING             - Afficher les connexions UDP
echo [127] GAMING             - Afficher le PID d’un port saisi ensuite
echo [128] GAMING             - Ouvrir le mélangeur de volume
echo [129] GAMING             - Ouvrir les paramètres audio
echo [130] GAMING             - Ouvrir les paramètres microphone
echo [131] GAMING             - Ouvrir les paramètres caméra
echo [132] GAMING             - Ouvrir les périphériques de lecture audio
echo [133] GAMING             - Ouvrir les propriétés de la carte graphique
echo [134] GAMING             - Afficher les processus actifs
echo [135] GAMING             - Afficher les processus avec mémoire
echo [136] GAMING             - Afficher les processus CPU
echo [137] GAMING             - Afficher les programmes au démarrage
echo [138] GAMING             - Ouvrir les applications de démarrage
echo [139] GAMING             - Ouvrir les paramètres notifications
echo [140] GAMING             - Ouvrir les paramètres concentration
echo [141] GAMING             - Ouvrir les paramètres écran de veille
echo [142] GAMING             - Ouvrir les paramètres multitâche
echo [143] GAMING             - Ouvrir les paramètres système avancés
echo [144] GAMING             - Ouvrir les variables d’environnement
echo [145] GAMING             - Ouvrir les informations DirectX
echo [146] GAMING             - Afficher le pilote graphique
echo [147] GAMING             - Afficher la résolution actuelle
echo [148] GAMING             - Afficher les écrans PnP
echo [149] GAMING             - Ouvrir AMD Software si installé
echo [150] GAMING             - Ouvrir le panneau graphique Windows
echo [151] PERFORMANCE        - Afficher le plan actif
echo [152] PERFORMANCE        - Lister les plans
echo [153] PERFORMANCE        - Activer le plan Équilibré
echo [154] PERFORMANCE        - Créer un rapport batterie
echo [155] PERFORMANCE        - Créer un rapport énergie
echo [156] PERFORMANCE        - Afficher les demandes d’alimentation
echo [157] PERFORMANCE        - Afficher les minuteurs de réveil
echo [158] PERFORMANCE        - Afficher les périphériques réveillant le PC
echo [159] PERFORMANCE        - Afficher les périphériques pouvant réveiller le PC
echo [160] PERFORMANCE        - Ouvrir les options d’alimentation
echo [161] PERFORMANCE        - Ouvrir les paramètres alimentation
echo [162] PERFORMANCE        - Ouvrir la batterie
echo [163] PERFORMANCE        - Afficher l’état batterie
echo [164] PERFORMANCE        - Afficher les performances CPU
echo [165] PERFORMANCE        - Afficher la fréquence CPU rapportée
echo [166] PERFORMANCE        - Afficher le nombre de cœurs CPU
echo [167] PERFORMANCE        - Afficher la RAM disponible
echo [168] PERFORMANCE        - Afficher la RAM totale
echo [169] PERFORMANCE        - Afficher le fichier d’échange
echo [170] PERFORMANCE        - Afficher les paramètres mémoire virtuelle
echo [171] PERFORMANCE        - Ouvrir les performances système
echo [172] PERFORMANCE        - Ouvrir les propriétés système avancées
echo [173] PERFORMANCE        - Ouvrir les propriétés protection système
echo [174] PERFORMANCE        - Ouvrir la restauration système
echo [175] PERFORMANCE        - Afficher les points de restauration
echo [176] PERFORMANCE        - Afficher le temps depuis démarrage
echo [177] PERFORMANCE        - Afficher l’état veille
echo [178] PERFORMANCE        - Afficher les minuteries actives
echo [179] PERFORMANCE        - Afficher le paramètre veille écran
echo [180] PERFORMANCE        - Afficher le paramètre sommeil
echo [181] PERFORMANCE        - Afficher le paramètre processeur
echo [182] PERFORMANCE        - Afficher les paramètres PCI Express
echo [183] PERFORMANCE        - Afficher les paramètres USB
echo [184] PERFORMANCE        - Afficher les paramètres réseau en veille
echo [185] PERFORMANCE        - Ouvrir le gestionnaire de tâches
echo [186] PERFORMANCE        - Ouvrir le moniteur de ressources
echo [187] PERFORMANCE        - Ouvrir le moniteur de performances
echo [188] PERFORMANCE        - Ouvrir le planificateur de tâches
echo [189] PERFORMANCE        - Ouvrir les services
echo [190] PERFORMANCE        - Ouvrir les événements système
echo [191] PERFORMANCE        - Ouvrir le gestionnaire de périphériques
echo [192] PERFORMANCE        - Ouvrir les informations système
echo [193] PERFORMANCE        - Ouvrir DirectX Diagnostic
echo [194] PERFORMANCE        - Ouvrir le diagnostic mémoire Windows
echo [195] PERFORMANCE        - Ouvrir la gestion des disques
echo [196] PERFORMANCE        - Ouvrir la gestion de l’ordinateur
echo [197] PERFORMANCE        - Ouvrir le gestionnaire de certificats
echo [198] PERFORMANCE        - Ouvrir le gestionnaire de tâches planifié
echo [199] PERFORMANCE        - Ouvrir les performances Windows
echo [200] PERFORMANCE        - Afficher les compteurs processeur
echo [201] RESEAU             - Réinitialiser Winsock
echo [202] RESEAU             - Réinitialiser TCP/IP
echo [203] RESEAU             - Afficher les interfaces
echo [204] RESEAU             - Afficher la configuration IPv4
echo [205] RESEAU             - Afficher les DNS configurés
echo [206] RESEAU             - Afficher les profils Wi-Fi
echo [207] RESEAU             - Afficher le pilote Wi-Fi
echo [208] RESEAU             - Afficher l’interface Wi-Fi
echo [209] RESEAU             - Afficher les réseaux Wi-Fi visibles
echo [210] RESEAU             - Afficher les statistiques Wi-Fi
echo [211] RESEAU             - Exporter les profils Wi-Fi
echo [212] RESEAU             - Afficher le pare-feu
echo [213] RESEAU             - Afficher les règles pare-feu actives
echo [214] RESEAU             - Afficher les règles pare-feu sortantes
echo [215] RESEAU             - Ouvrir le pare-feu avancé
echo [216] RESEAU             - Ouvrir les paramètres réseau
echo [217] RESEAU             - Ouvrir Wi-Fi
echo [218] RESEAU             - Ouvrir Ethernet
echo [219] RESEAU             - Ouvrir VPN
echo [220] RESEAU             - Ouvrir proxy
echo [221] RESEAU             - Ouvrir point d’accès mobile
echo [222] RESEAU             - Vider le cache DNS
echo [223] RESEAU             - Renouveler l’adresse IP
echo [224] RESEAU             - Libérer l’adresse IP
echo [225] RESEAU             - Afficher l’adresse IPv4
echo [226] RESEAU             - Afficher l’adresse IPv6
echo [227] RESEAU             - Afficher les routes IPv4
echo [228] RESEAU             - Afficher les routes IPv6
echo [229] RESEAU             - Afficher les DNS par interface
echo [230] RESEAU             - Afficher les cartes réseau
echo [231] RESEAU             - Afficher les statistiques des cartes réseau
echo [232] RESEAU             - Afficher les profils réseau
echo [233] RESEAU             - Afficher les connexions TCP actives
echo [234] RESEAU             - Afficher les ports TCP à l’écoute
echo [235] RESEAU             - Afficher les ports UDP
echo [236] RESEAU             - Tester Cloudflare
echo [237] RESEAU             - Tester Google DNS
echo [238] RESEAU             - Tester Quad9
echo [239] RESEAU             - Résoudre Cloudflare
echo [240] RESEAU             - Résoudre GitHub
echo [241] RESEAU             - Résoudre Steam
echo [242] RESEAU             - Tracer Cloudflare
echo [243] RESEAU             - Tracer GitHub
echo [244] RESEAU             - Analyser le chemin Cloudflare
echo [245] RESEAU             - Tester HTTPS Microsoft
echo [246] RESEAU             - Tester HTTPS GitHub
echo [247] RESEAU             - Tester HTTPS Cloudflare
echo [248] RESEAU             - Ouvrir les propriétés Internet
echo [249] RESEAU             - Ouvrir les connexions réseau
echo [250] STOCKAGE           - Afficher les volumes
echo [251] STOCKAGE           - Afficher les disques physiques
echo [252] STOCKAGE           - Afficher les partitions
echo [253] STOCKAGE           - Afficher les disques
echo [254] STOCKAGE           - Ouvrir Gestion des disques
echo [255] STOCKAGE           - Ouvrir Optimiser les lecteurs
echo [256] STOCKAGE           - Afficher l’état TRIM
echo [257] STOCKAGE           - Activer TRIM NTFS
echo [258] STOCKAGE           - Analyser le disque C:
echo [259] STOCKAGE           - Vérifier l’intégrité du disque C:
echo [260] STOCKAGE           - Afficher l’espace du disque C:
echo [261] STOCKAGE           - Afficher les fichiers temporaires volumineux
echo [262] STOCKAGE           - Afficher les gros fichiers du profil utilisateur
echo [263] STOCKAGE           - Afficher les gros fichiers du Bureau
echo [264] STOCKAGE           - Afficher les gros fichiers Téléchargements
echo [265] STOCKAGE           - Ouvrir le dossier Téléchargements
echo [266] STOCKAGE           - Ouvrir le Bureau
echo [267] STOCKAGE           - Ouvrir Documents
echo [268] STOCKAGE           - Ouvrir Images
echo [269] STOCKAGE           - Ouvrir Vidéos
echo [270] STOCKAGE           - Ouvrir Musique
echo [271] STOCKAGE           - Ouvrir les lecteurs
echo [272] STOCKAGE           - Ouvrir Ce PC
echo [273] STOCKAGE           - Ouvrir le dossier AppData local
echo [274] STOCKAGE           - Ouvrir le dossier AppData Roaming
echo [275] STOCKAGE           - Ouvrir le dossier ProgramData
echo [276] STOCKAGE           - Ouvrir le dossier Program Files
echo [277] STOCKAGE           - Ouvrir le dossier Program Files x86
echo [278] STOCKAGE           - Ouvrir le dossier Windows
echo [279] STOCKAGE           - Ouvrir le dossier System32
echo [280] STOCKAGE           - Ouvrir le dossier des pilotes
echo [281] STOCKAGE           - Ouvrir le dossier SoftwareDistribution
echo [282] STOCKAGE           - Afficher la taille du dossier Temp
echo [283] STOCKAGE           - Afficher la taille du dossier Windows Temp
echo [284] STOCKAGE           - Afficher les fichiers récents du Bureau
echo [285] STOCKAGE           - Afficher les fichiers récents Téléchargements
echo [286] STOCKAGE           - Afficher les fichiers récemment modifiés dans Temp
echo [287] STOCKAGE           - Afficher les fichiers cachés du Bureau
echo [288] STOCKAGE           - Afficher les fichiers cachés Téléchargements
echo [289] STOCKAGE           - Afficher les extensions de fichiers du système
echo [290] STOCKAGE           - Ouvrir les paramètres de stockage
echo [291] STOCKAGE           - Ouvrir les paramètres stockage avancés
echo [292] STOCKAGE           - Ouvrir les recommandations de nettoyage
echo [293] STOCKAGE           - Ouvrir l’optimisation des lecteurs
echo [294] STOCKAGE           - Afficher les volumes BitLocker
echo [295] STOCKAGE           - Ouvrir BitLocker
echo [296] STOCKAGE           - Afficher les dossiers de cache Edge
echo [297] STOCKAGE           - Afficher les dossiers de cache Chrome
echo [298] STOCKAGE           - Afficher les dossiers de cache Brave
echo [299] STOCKAGE           - Ouvrir l’Explorateur
echo [300] REPARATION         - Vérifier les fichiers système
echo [301] REPARATION         - Scanner les fichiers système
echo [302] REPARATION         - Vérifier l’image Windows
echo [303] REPARATION         - Scanner l’image Windows
echo [304] REPARATION         - Réparer l’image Windows
echo [305] REPARATION         - Nettoyer les composants Windows
echo [306] REPARATION         - Afficher l’état du service Windows Update
echo [307] REPARATION         - Afficher l’état du service BITS
echo [308] REPARATION         - Redémarrer Windows Update
echo [309] REPARATION         - Redémarrer BITS
echo [310] REPARATION         - Ouvrir Windows Update
echo [311] REPARATION         - Ouvrir les options Windows Update
echo [312] REPARATION         - Ouvrir l’historique Windows Update
echo [313] REPARATION         - Ouvrir les options de récupération
echo [314] REPARATION         - Ouvrir le dépannage
echo [315] REPARATION         - Ouvrir le dépannage audio
echo [316] REPARATION         - Ouvrir le dépannage réseau
echo [317] REPARATION         - Ouvrir le dépannage Windows Update
echo [318] REPARATION         - Ouvrir la restauration système
echo [319] REPARATION         - Ouvrir la récupération avancée
echo [320] REPARATION         - Ouvrir les paramètres de sauvegarde
echo [321] REPARATION         - Ouvrir la sécurité Windows
echo [322] REPARATION         - Ouvrir l’historique de protection
echo [323] REPARATION         - Ouvrir la protection contre les virus
echo [324] REPARATION         - Ouvrir le pare-feu Windows
echo [325] REPARATION         - Ouvrir les options Defender
echo [326] REPARATION         - Afficher l’état Defender
echo [327] REPARATION         - Mettre à jour les signatures Defender
echo [328] REPARATION         - Lancer une analyse rapide Defender
echo [329] REPARATION         - Afficher les exclusions Defender
echo [330] REPARATION         - Afficher le statut du pare-feu
echo [331] REPARATION         - Afficher les profils de sécurité réseau
echo [332] REPARATION         - Afficher les services arrêtés
echo [333] REPARATION         - Afficher les services en démarrage automatique
echo [334] REPARATION         - Afficher les services en erreur
echo [335] REPARATION         - Ouvrir les services
echo [336] REPARATION         - Ouvrir l’observateur d’événements
echo [337] REPARATION         - Ouvrir les journaux système
echo [338] REPARATION         - Ouvrir le planificateur
echo [339] REPARATION         - Ouvrir la stratégie de sécurité locale
echo [340] REPARATION         - Ouvrir les utilisateurs locaux
echo [341] REPARATION         - Ouvrir la gestion de l’ordinateur
echo [342] REPARATION         - Ouvrir le registre
echo [343] REPARATION         - Ouvrir l’éditeur de stratégie de groupe
echo [344] REPARATION         - Ouvrir les variables système
echo [345] REPARATION         - Ouvrir les paramètres d’activation
echo [346] REPARATION         - Ouvrir les paramètres de licence
echo [347] REPARATION         - Afficher l’état d’activation Windows
echo [348] REPARATION         - Afficher les détails de licence Windows
echo [349] PERIPHERIQUES      - Ouvrir le Gestionnaire de périphériques
echo [350] PERIPHERIQUES      - Afficher les périphériques Plug and Play
echo [351] PERIPHERIQUES      - Afficher les périphériques en erreur
echo [352] PERIPHERIQUES      - Afficher les pilotes signés
echo [353] PERIPHERIQUES      - Afficher les pilotes non Microsoft
echo [354] PERIPHERIQUES      - Afficher le pilote GPU
echo [355] PERIPHERIQUES      - Afficher le pilote audio
echo [356] PERIPHERIQUES      - Afficher les contrôleurs réseau
echo [357] PERIPHERIQUES      - Afficher les contrôleurs USB
echo [358] PERIPHERIQUES      - Afficher les claviers
echo [359] PERIPHERIQUES      - Afficher les souris
echo [360] PERIPHERIQUES      - Afficher les moniteurs
echo [361] PERIPHERIQUES      - Afficher les batteries
echo [362] PERIPHERIQUES      - Afficher les contrôleurs de stockage
echo [363] PERIPHERIQUES      - Afficher les processeurs PnP
echo [364] PERIPHERIQUES      - Afficher les cartes graphiques PnP
echo [365] PERIPHERIQUES      - Afficher les cartes réseau PnP
echo [366] PERIPHERIQUES      - Ouvrir les imprimantes
echo [367] PERIPHERIQUES      - Ouvrir Bluetooth
echo [368] PERIPHERIQUES      - Ouvrir USB
echo [369] PERIPHERIQUES      - Ouvrir les périphériques connectés
echo [370] PERIPHERIQUES      - Ouvrir les paramètres souris
echo [371] PERIPHERIQUES      - Ouvrir les paramètres clavier
echo [372] PERIPHERIQUES      - Ouvrir les paramètres stylet
echo [373] PERIPHERIQUES      - Ouvrir les paramètres tactile
echo [374] PERIPHERIQUES      - Ouvrir les paramètres caméra
echo [375] PERIPHERIQUES      - Ouvrir les paramètres microphone
echo [376] PERIPHERIQUES      - Ouvrir les paramètres audio
echo [377] PERIPHERIQUES      - Ouvrir les paramètres affichage
echo [378] PERIPHERIQUES      - Ouvrir les paramètres affichage avancé
echo [379] PERIPHERIQUES      - Ouvrir les paramètres HDR
echo [380] PERIPHERIQUES      - Ouvrir les paramètres luminosité
echo [381] PERIPHERIQUES      - Afficher les périphériques audio
echo [382] PERIPHERIQUES      - Afficher les contrôleurs Bluetooth
echo [383] PERIPHERIQUES      - Afficher les périphériques de caméra
echo [384] PERIPHERIQUES      - Afficher les périphériques HID
echo [385] PERIPHERIQUES      - Afficher les périphériques de batterie
echo [386] PERIPHERIQUES      - Afficher les contrôleurs système
echo [387] PERIPHERIQUES      - Afficher les contrôleurs mémoire
echo [388] PERIPHERIQUES      - Afficher les ports COM
echo [389] PERIPHERIQUES      - Afficher les hubs USB
echo [390] PERIPHERIQUES      - Afficher les périphériques récemment connectés
echo [391] PERIPHERIQUES      - Ouvrir les paramètres Bluetooth
echo [392] PERIPHERIQUES      - Ouvrir les paramètres appareils
echo [393] PERIPHERIQUES      - Ouvrir les paramètres imprimantes
echo [394] PERIPHERIQUES      - Ouvrir les paramètres téléphone
echo [395] PERIPHERIQUES      - Ouvrir les paramètres appareil photo
echo [396] PERIPHERIQUES      - Ouvrir les paramètres appareils audio
echo [397] PERIPHERIQUES      - Ouvrir le panneau de contrôle classique
echo [398] PERIPHERIQUES      - Ouvrir le panneau périphériques et imprimantes
echo [399] PERIPHERIQUES      - Ouvrir le panneau souris
echo [400] PROCESSUS          - Lister tous les processus
echo [401] PROCESSUS          - Lister les processus avec services
echo [402] PROCESSUS          - Lister les processus avec modules
echo [403] PROCESSUS          - Afficher les processus utilisant beaucoup de RAM
echo [404] PROCESSUS          - Afficher les processus utilisant le CPU
echo [405] PROCESSUS          - Afficher les processus récents
echo [406] PROCESSUS          - Afficher les applications graphiques
echo [407] PROCESSUS          - Afficher les services
echo [408] PROCESSUS          - Afficher les services en cours
echo [409] PROCESSUS          - Afficher les services arrêtés
echo [410] PROCESSUS          - Afficher les services automatiques
echo [411] PROCESSUS          - Afficher les services manuels
echo [412] PROCESSUS          - Afficher les services désactivés
echo [413] PROCESSUS          - Afficher les services Microsoft
echo [414] PROCESSUS          - Afficher les services tiers
echo [415] PROCESSUS          - Ouvrir les services
echo [416] PROCESSUS          - Ouvrir le gestionnaire des tâches
echo [417] PROCESSUS          - Ouvrir les applications au démarrage
echo [418] PROCESSUS          - Afficher les entrées de démarrage
echo [419] PROCESSUS          - Afficher les tâches planifiées actives
echo [420] PROCESSUS          - Afficher les tâches planifiées en détail
echo [421] PROCESSUS          - Ouvrir le planificateur
echo [422] PROCESSUS          - Afficher les tâches Microsoft
echo [423] PROCESSUS          - Afficher les tâches tierces
echo [424] PROCESSUS          - Afficher les processus suspendus
echo [425] PROCESSUS          - Afficher les processus sans fenêtre
echo [426] PROCESSUS          - Afficher les fenêtres ouvertes
echo [427] PROCESSUS          - Afficher les applications Store en cours
echo [428] PROCESSUS          - Afficher les processus de navigateur
echo [429] PROCESSUS          - Afficher les processus de jeu connus
echo [430] PROCESSUS          - Afficher les processus Discord
echo [431] PROCESSUS          - Afficher les processus Steam
echo [432] PROCESSUS          - Afficher les processus AMD
echo [433] PROCESSUS          - Afficher les processus HP
echo [434] PROCESSUS          - Afficher les processus Windows Defender
echo [435] PROCESSUS          - Afficher les processus Windows Update
echo [436] PROCESSUS          - Afficher les processus qui ont un chemin
echo [437] PROCESSUS          - Afficher les processus 64 bits
echo [438] PROCESSUS          - Afficher les applications de démarrage utilisateur
echo [439] PROCESSUS          - Afficher les applications de démarrage machine
echo [440] PROCESSUS          - Afficher les tâches planifiées de démarrage
echo [441] PROCESSUS          - Ouvrir les dossiers de démarrage
echo [442] PROCESSUS          - Ouvrir le dossier de démarrage global
echo [443] PROCESSUS          - Ouvrir les services
echo [444] PROCESSUS          - Ouvrir le planificateur
echo [445] PROCESSUS          - Ouvrir le gestionnaire des tâches
echo [446] PROCESSUS          - Ouvrir le moniteur de ressources
echo [447] PROCESSUS          - Ouvrir le moniteur de performances
echo [448] PROCESSUS          - Ouvrir les événements
echo [449] PROCESSUS          - Afficher les handles d’un processus choisi
echo [450] OUTILS & RAPPORTS  - Créer un rapport système texte
echo [451] OUTILS & RAPPORTS  - Créer un rapport réseau texte
echo [452] OUTILS & RAPPORTS  - Créer un rapport processus texte
echo [453] OUTILS & RAPPORTS  - Créer un rapport services texte
echo [454] OUTILS & RAPPORTS  - Créer un rapport pilotes texte
echo [455] OUTILS & RAPPORTS  - Créer un rapport disques texte
echo [456] OUTILS & RAPPORTS  - Créer un rapport volumes texte
echo [457] OUTILS & RAPPORTS  - Créer un rapport GPU texte
echo [458] OUTILS & RAPPORTS  - Créer un rapport CPU texte
echo [459] OUTILS & RAPPORTS  - Créer un rapport RAM texte
echo [460] OUTILS & RAPPORTS  - Créer un rapport BIOS texte
echo [461] OUTILS & RAPPORTS  - Créer un rapport carte mère texte
echo [462] OUTILS & RAPPORTS  - Créer un rapport batterie texte
echo [463] OUTILS & RAPPORTS  - Créer un rapport démarrage texte
echo [464] OUTILS & RAPPORTS  - Créer un rapport tâches planifiées
echo [465] OUTILS & RAPPORTS  - Créer un rapport pare-feu
echo [466] OUTILS & RAPPORTS  - Créer un rapport DNS
echo [467] OUTILS & RAPPORTS  - Créer un rapport routes
echo [468] OUTILS & RAPPORTS  - Créer un rapport connexions
echo [469] OUTILS & RAPPORTS  - Créer un rapport PnP
echo [470] OUTILS & RAPPORTS  - Ouvrir le dossier des rapports HUBBOOST
echo [471] OUTILS & RAPPORTS  - Ouvrir les paramètres de confidentialité générale
echo [472] OUTILS & RAPPORTS  - Ouvrir les paramètres de diagnostic
echo [473] OUTILS & RAPPORTS  - Ouvrir les autorisations des applications
echo [474] OUTILS & RAPPORTS  - Ouvrir les paramètres localisation
echo [475] OUTILS & RAPPORTS  - Ouvrir les paramètres caméra
echo [476] OUTILS & RAPPORTS  - Ouvrir les paramètres microphone
echo [477] OUTILS & RAPPORTS  - Ouvrir les paramètres notifications
echo [478] OUTILS & RAPPORTS  - Ouvrir les paramètres comptes
echo [479] OUTILS & RAPPORTS  - Ouvrir les options de connexion
echo [480] OUTILS & RAPPORTS  - Ouvrir les paramètres utilisateurs
echo [481] OUTILS & RAPPORTS  - Ouvrir les informations compte
echo [482] OUTILS & RAPPORTS  - Ouvrir les paramètres synchronisation
echo [483] OUTILS & RAPPORTS  - Ouvrir les paramètres langue
echo [484] OUTILS & RAPPORTS  - Ouvrir les paramètres heure
echo [485] OUTILS & RAPPORTS  - Ouvrir les paramètres clavier
echo [486] OUTILS & RAPPORTS  - Ouvrir les paramètres souris
echo [487] OUTILS & RAPPORTS  - Ouvrir les paramètres accessibilité
echo [488] OUTILS & RAPPORTS  - Ouvrir les paramètres police
echo [489] OUTILS & RAPPORTS  - Ouvrir les paramètres personnalisation
echo [490] OUTILS & RAPPORTS  - Ouvrir les paramètres couleurs
echo [491] OUTILS & RAPPORTS  - Ouvrir les paramètres thème
echo [492] OUTILS & RAPPORTS  - Ouvrir les paramètres barre des tâches
echo [493] OUTILS & RAPPORTS  - Ouvrir les paramètres menu Démarrer
echo [494] OUTILS & RAPPORTS  - Ouvrir les paramètres écran de verrouillage
echo [495] OUTILS & RAPPORTS  - Ouvrir les paramètres applications par défaut
echo [496] OUTILS & RAPPORTS  - Ouvrir les paramètres stockage
echo [497] OUTILS & RAPPORTS  - Ouvrir les paramètres partage à proximité
echo [498] OUTILS & RAPPORTS  - Ouvrir les paramètres presse-papiers
echo [499] OUTILS & RAPPORTS  - Ouvrir les paramètres bureau à distance
echo [500] OUTILS & RAPPORTS  - Ouvrir les paramètres système avancés

set "HB_CHOICE="
set /p "HB_CHOICE=Votre choix : "
if /I "%HB_CHOICE%"=="I" goto info
if /I "%HB_CHOICE%"=="R" goto maintenance
if /I "%HB_CHOICE%"=="A" goto help
if "%HB_CHOICE%"=="0" goto quit

set /a HB_NUM=%HB_CHOICE% 2>nul
if errorlevel 1 goto invalid
if %HB_NUM% LSS 1 goto invalid
if %HB_NUM% GTR 500 goto invalid
goto opt%HB_NUM%

:invalid
echo.
echo [ERREUR] Entrez un nombre entre 1 et 500, ou I/R/A/0.
pause
goto main

:info
cls
echo ================= INFORMATIONS PC =================
echo.
echo Nom : %COMPUTERNAME%
echo Utilisateur : %USERNAME%
echo Windows :
ver
echo.
powershell -NoProfile -Command "Get-CimInstance Win32_ComputerSystem | Format-List Manufacturer,Model,TotalPhysicalMemory"
powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Format-List Name,NumberOfCores,NumberOfLogicalProcessors,MaxClockSpeed"
powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Format-List Name,DriverVersion,AdapterRAM"
echo.
pause
goto main

:help
cls
echo ================= AIDE HUBBOOST =================
echo.
echo 1-500 : execute l'option correspondante.
echo I     : affiche le CPU, GPU, RAM et Windows.
echo R     : lance une maintenance prudente.
echo A     : affiche cette aide.
echo 0     : quitte HUBBOOST.
echo.
echo HUBBOOST ne force pas de tension CPU/GPU et ne fait pas d'overclocking materiel.
echo Certaines commandes demandent les droits administrateur.
echo Ne lancez pas toutes les options sans savoir ce qu'elles font.
echo.
pause
goto main

:maintenance
cls
echo ============ MAINTENANCE PRUDENTE ============
echo Nettoyage des temporaires, cache DNS et verification Windows.
echo.
del /f /s /q "%TEMP%\*" 2>nul
ipconfig /flushdns
DISM /Online /Cleanup-Image /CheckHealth
sfc /verifyonly
echo.
echo Maintenance terminee.
pause
goto main

:opt1
cls
echo ================================================================
echo OPTION 001 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher la version de Windows
echo ================================================================
echo.
echo Execution en cours.
ver
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt2
cls
echo ================================================================
echo OPTION 002 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les informations système
echo ================================================================
echo.
echo Execution en cours.
systeminfo
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt3
cls
echo ================================================================
echo OPTION 003 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le nom du PC
echo ================================================================
echo.
echo Execution en cours.
hostname
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt4
cls
echo ================================================================
echo OPTION 004 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le nom de l’utilisateur
echo ================================================================
echo.
echo Execution en cours.
whoami
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt5
cls
echo ================================================================
echo OPTION 005 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher la configuration réseau
echo ================================================================
echo.
echo Execution en cours.
ipconfig /all
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt6
cls
echo ================================================================
echo OPTION 006 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les routes réseau
echo ================================================================
echo.
echo Execution en cours.
route print
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt7
cls
echo ================================================================
echo OPTION 007 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les connexions réseau
echo ================================================================
echo.
echo Execution en cours.
netstat -ano
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt8
cls
echo ================================================================
echo OPTION 008 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Tester la pile TCP/IP
echo ================================================================
echo.
echo Execution en cours.
ping 127.0.0.1 -n 2
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt9
cls
echo ================================================================
echo OPTION 009 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Tester la résolution DNS Microsoft
echo ================================================================
echo.
echo Execution en cours.
nslookup microsoft.com
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt10
cls
echo ================================================================
echo OPTION 010 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le cache DNS
echo ================================================================
echo.
echo Execution en cours.
ipconfig /displaydns
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt11
cls
echo ================================================================
echo OPTION 011 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le cache ARP
echo ================================================================
echo.
echo Execution en cours.
arp -a
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt12
cls
echo ================================================================
echo OPTION 012 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les cartes réseau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetAdapter | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt13
cls
echo ================================================================
echo OPTION 013 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les adresses IP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetIPAddress | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt14
cls
echo ================================================================
echo OPTION 014 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le processeur
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Format-List Name,NumberOfCores,NumberOfLogicalProcessors,MaxClockSpeed"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt15
cls
echo ================================================================
echo OPTION 015 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher la mémoire RAM
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_ComputerSystem | Format-List TotalPhysicalMemory"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt16
cls
echo ================================================================
echo OPTION 016 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le GPU
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Format-List Name,DriverVersion,AdapterRAM"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt17
cls
echo ================================================================
echo OPTION 017 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les disques
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PhysicalDisk | Format-Table FriendlyName,MediaType,HealthStatus,Size -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt18
cls
echo ================================================================
echo OPTION 018 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les volumes
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Volume | Format-Table DriveLetter,FileSystem,HealthStatus,SizeRemaining,Size -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt19
cls
echo ================================================================
echo OPTION 019 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les processus les plus gourmands
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Sort-Object CPU -Descending | Select-Object -First 15 Name,Id,CPU | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt20
cls
echo ================================================================
echo OPTION 020 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les services en cours
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Service | Where-Object Status -eq Running | Select-Object -First 30 Name,DisplayName,Status | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt21
cls
echo ================================================================
echo OPTION 021 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le plan d’alimentation actif
echo ================================================================
echo.
echo Execution en cours.
powercfg /getactivescheme
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt22
cls
echo ================================================================
echo OPTION 022 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les options d’alimentation
echo ================================================================
echo.
echo Execution en cours.
powercfg /list
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt23
cls
echo ================================================================
echo OPTION 023 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les périphériques USB
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -PresentOnly | Where-Object InstanceId -Like 'USB*' | Format-Table Status,Class,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt24
cls
echo ================================================================
echo OPTION 024 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les périphériques en erreur
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice | Where-Object Status -ne 'OK' | Format-Table Status,Class,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt25
cls
echo ================================================================
echo OPTION 025 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les pilotes récemment chargés
echo ================================================================
echo.
echo Execution en cours.
driverquery /fo table
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt26
cls
echo ================================================================
echo OPTION 026 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les pilotes signés
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_PnPSignedDriver | Select-Object -First 40 DeviceName,DriverVersion,Manufacturer | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt27
cls
echo ================================================================
echo OPTION 027 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les programmes au démarrage
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_StartupCommand | Select-Object Name,Command,Location | Format-Table -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt28
cls
echo ================================================================
echo OPTION 028 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher l’espace libre du disque système
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "$d=Get-Volume -DriveLetter $env:SystemDrive[0]; $d | Format-List DriveLetter,SizeRemaining,Size"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt29
cls
echo ================================================================
echo OPTION 029 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher l’utilisation CPU actuelle
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Counter '\Processor(_Total)\% Processor Time' -SampleInterval 1 -MaxSamples 1 | Select-Object -ExpandProperty CounterSamples | Format-Table CookedValue -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt30
cls
echo ================================================================
echo OPTION 030 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher l’utilisation RAM actuelle
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "$os=Get-CimInstance Win32_OperatingSystem; [math]::Round(($os.TotalVisibleMemorySize-$os.FreePhysicalMemory)/$os.TotalVisibleMemorySize*100,1)"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt31
cls
echo ================================================================
echo OPTION 031 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher la température si le pilote l’expose
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance -Namespace root/wmi -ClassName MSAcpi_ThermalZoneTemperature -ErrorAction SilentlyContinue | Select-Object CurrentTemperature"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt32
cls
echo ================================================================
echo OPTION 032 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher l’uptime Windows
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "(Get-Date)-(Get-CimInstance Win32_OperatingSystem).LastBootUpTime"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt33
cls
echo ================================================================
echo OPTION 033 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le modèle du PC
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_ComputerSystem | Format-List Manufacturer,Model"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt34
cls
echo ================================================================
echo OPTION 034 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher le BIOS
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_BIOS | Format-List Manufacturer,SMBIOSBIOSVersion,ReleaseDate"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt35
cls
echo ================================================================
echo OPTION 035 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher la carte mère
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_BaseBoard | Format-List Manufacturer,Product,SerialNumber"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt36
cls
echo ================================================================
echo OPTION 036 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher les écrans
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_DesktopMonitor | Format-List Name,ScreenHeight,ScreenWidth"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt37
cls
echo ================================================================
echo OPTION 037 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Afficher DirectX
echo ================================================================
echo.
echo Execution en cours.
dxdiag
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt38
cls
echo ================================================================
echo OPTION 038 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Ouvrir le Gestionnaire des tâches
echo ================================================================
echo.
echo Execution en cours.
start taskmgr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt39
cls
echo ================================================================
echo OPTION 039 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Ouvrir le Gestionnaire de périphériques
echo ================================================================
echo.
echo Execution en cours.
start devmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt40
cls
echo ================================================================
echo OPTION 040 / 500
echo CATEGORIE : DIAGNOSTIC
echo ACTION    : Ouvrir les informations système
echo ================================================================
echo.
echo Execution en cours.
start msinfo32
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt41
cls
echo ================================================================
echo OPTION 041 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Nettoyer les fichiers temporaires utilisateur
echo ================================================================
echo.
echo Execution en cours.
del /f /s /q "%TEMP%\*" 2>nul
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt42
cls
echo ================================================================
echo OPTION 042 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Nettoyer le cache temporaire Windows
echo ================================================================
echo.
echo Execution en cours.
del /f /s /q "%WINDIR%\Temp\*" 2>nul
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt43
cls
echo ================================================================
echo OPTION 043 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Vider le cache DNS
echo ================================================================
echo.
echo Execution en cours.
ipconfig /flushdns
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt44
cls
echo ================================================================
echo OPTION 044 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Réinitialiser le cache ARP
echo ================================================================
echo.
echo Execution en cours.
netsh interface ip delete arpcache
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt45
cls
echo ================================================================
echo OPTION 045 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Vérifier l’image Windows
echo ================================================================
echo.
echo Execution en cours.
DISM /Online /Cleanup-Image /CheckHealth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt46
cls
echo ================================================================
echo OPTION 046 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Analyser l’image Windows
echo ================================================================
echo.
echo Execution en cours.
DISM /Online /Cleanup-Image /ScanHealth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt47
cls
echo ================================================================
echo OPTION 047 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Vérifier les fichiers système
echo ================================================================
echo.
echo Execution en cours.
sfc /verifyonly
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt48
cls
echo ================================================================
echo OPTION 048 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Nettoyer le composant Windows
echo ================================================================
echo.
echo Execution en cours.
Dism.exe /Online /Cleanup-Image /StartComponentCleanup
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt49
cls
echo ================================================================
echo OPTION 049 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir Nettoyage de disque
echo ================================================================
echo.
echo Execution en cours.
cleanmgr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt50
cls
echo ================================================================
echo OPTION 050 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de stockage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:storagesense
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt51
cls
echo ================================================================
echo OPTION 051 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir Storage Sense
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:storagepolicies
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt52
cls
echo ================================================================
echo OPTION 052 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les fichiers temporaires
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:storagesense
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt53
cls
echo ================================================================
echo OPTION 053 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir Windows Update
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:windowsupdate
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt54
cls
echo ================================================================
echo OPTION 054 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les options avancées Windows Update
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:windowsupdate-options
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt55
cls
echo ================================================================
echo OPTION 055 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir l’historique Windows Update
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:windowsupdate-history
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt56
cls
echo ================================================================
echo OPTION 056 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les applications installées
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:appsfeatures
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt57
cls
echo ================================================================
echo OPTION 057 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les applications par défaut
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:defaultapps
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt58
cls
echo ================================================================
echo OPTION 058 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les options de démarrage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:startupapps
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt59
cls
echo ================================================================
echo OPTION 059 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres réseau
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-status
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt60
cls
echo ================================================================
echo OPTION 060 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres Wi-Fi
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-wifi
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt61
cls
echo ================================================================
echo OPTION 061 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres Ethernet
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-ethernet
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt62
cls
echo ================================================================
echo OPTION 062 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres graphiques
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display-advancedgraphics
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt63
cls
echo ================================================================
echo OPTION 063 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres d’affichage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt64
cls
echo ================================================================
echo OPTION 064 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de son
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:sound
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt65
cls
echo ================================================================
echo OPTION 065 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres Bluetooth
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:bluetooth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt66
cls
echo ================================================================
echo OPTION 066 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres USB
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:usb
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt67
cls
echo ================================================================
echo OPTION 067 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres batterie
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:batterysaver
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt68
cls
echo ================================================================
echo OPTION 068 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres d’alimentation
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:powersleep
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt69
cls
echo ================================================================
echo OPTION 069 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de confidentialité
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt70
cls
echo ================================================================
echo OPTION 070 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de confidentialité des applications
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt71
cls
echo ================================================================
echo OPTION 071 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres système
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:system
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt72
cls
echo ================================================================
echo OPTION 072 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres À propos
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:about
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt73
cls
echo ================================================================
echo OPTION 073 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de récupération
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:recovery
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt74
cls
echo ================================================================
echo OPTION 074 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de sauvegarde
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:backup
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt75
cls
echo ================================================================
echo OPTION 075 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de dépannage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:troubleshoot
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt76
cls
echo ================================================================
echo OPTION 076 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de sécurité Windows
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:windowsdefender
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt77
cls
echo ================================================================
echo OPTION 077 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir Windows Security
echo ================================================================
echo.
echo Execution en cours.
start windowsdefender:
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt78
cls
echo ================================================================
echo OPTION 078 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le planificateur de tâches
echo ================================================================
echo.
echo Execution en cours.
start taskschd.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt79
cls
echo ================================================================
echo OPTION 079 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les services Windows
echo ================================================================
echo.
echo Execution en cours.
start services.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt80
cls
echo ================================================================
echo OPTION 080 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir l’observateur d’événements
echo ================================================================
echo.
echo Execution en cours.
start eventvwr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt81
cls
echo ================================================================
echo OPTION 081 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le moniteur de ressources
echo ================================================================
echo.
echo Execution en cours.
start resmon
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt82
cls
echo ================================================================
echo OPTION 082 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le moniteur de performances
echo ================================================================
echo.
echo Execution en cours.
start perfmon
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt83
cls
echo ================================================================
echo OPTION 083 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le gestionnaire de certificats utilisateur
echo ================================================================
echo.
echo Execution en cours.
start certmgr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt84
cls
echo ================================================================
echo OPTION 084 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les connexions réseau
echo ================================================================
echo.
echo Execution en cours.
start ncpa.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt85
cls
echo ================================================================
echo OPTION 085 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les propriétés système
echo ================================================================
echo.
echo Execution en cours.
start sysdm.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt86
cls
echo ================================================================
echo OPTION 086 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les propriétés de la souris
echo ================================================================
echo.
echo Execution en cours.
start main.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt87
cls
echo ================================================================
echo OPTION 087 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les propriétés du clavier
echo ================================================================
echo.
echo Execution en cours.
start main.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt88
cls
echo ================================================================
echo OPTION 088 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les paramètres de date et heure
echo ================================================================
echo.
echo Execution en cours.
start timedate.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt89
cls
echo ================================================================
echo OPTION 089 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les propriétés de son classiques
echo ================================================================
echo.
echo Execution en cours.
start mmsys.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt90
cls
echo ================================================================
echo OPTION 090 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les options Internet
echo ================================================================
echo.
echo Execution en cours.
start inetcpl.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt91
cls
echo ================================================================
echo OPTION 091 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir les polices
echo ================================================================
echo.
echo Execution en cours.
start shell:fonts
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt92
cls
echo ================================================================
echo OPTION 092 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier Téléchargements
echo ================================================================
echo.
echo Execution en cours.
start shell:downloads
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt93
cls
echo ================================================================
echo OPTION 093 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier Temp utilisateur
echo ================================================================
echo.
echo Execution en cours.
start %TEMP%
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt94
cls
echo ================================================================
echo OPTION 094 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier Windows Temp
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\Temp
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt95
cls
echo ================================================================
echo OPTION 095 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier Prefetch
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\Prefetch
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt96
cls
echo ================================================================
echo OPTION 096 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier System32
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\System32
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt97
cls
echo ================================================================
echo OPTION 097 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier Drivers
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\System32\drivers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt98
cls
echo ================================================================
echo OPTION 098 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier Logs Windows
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\Logs
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt99
cls
echo ================================================================
echo OPTION 099 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Ouvrir le dossier Minidump
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\Minidump
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt100
cls
echo ================================================================
echo OPTION 100 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Afficher les fichiers temporaires volumineux
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:TEMP -File -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select-Object -First 20 Name,Length | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt101
cls
echo ================================================================
echo OPTION 101 / 500
echo CATEGORIE : MAINTENANCE
echo ACTION    : Afficher les plus gros fichiers du dossier Windows Temp
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:WINDIR\Temp -File -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select-Object -First 20 Name,Length | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt102
cls
echo ================================================================
echo OPTION 102 / 500
echo CATEGORIE : GAMING
echo ACTION    : Activer le mode Jeu Windows
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:gaming-gamemode
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt103
cls
echo ================================================================
echo OPTION 103 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir la barre de jeu
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:gaming-gamedvr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt104
cls
echo ================================================================
echo OPTION 104 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les captures Windows
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:gaming-gamedvr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt105
cls
echo ================================================================
echo OPTION 105 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres du mode Jeu
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:gaming-gamemode
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt106
cls
echo ================================================================
echo OPTION 106 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres graphiques avancés
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display-advancedgraphics
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt107
cls
echo ================================================================
echo OPTION 107 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres de fréquence écran
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display-advanced
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt108
cls
echo ================================================================
echo OPTION 108 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres HDR
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display-hdr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt109
cls
echo ================================================================
echo OPTION 109 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres d’affichage multiple
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt110
cls
echo ================================================================
echo OPTION 110 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres plein écran
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt111
cls
echo ================================================================
echo OPTION 111 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les processus GPU
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Counter '\GPU Engine(*)\Utilization Percentage' -ErrorAction SilentlyContinue | Select-Object -ExpandProperty CounterSamples | Sort-Object CookedValue -Descending | Select-Object -First 20 InstanceName,CookedValue | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt112
cls
echo ================================================================
echo OPTION 112 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les applications Xbox installées
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-AppxPackage *Xbox* | Select-Object Name,Version | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt113
cls
echo ================================================================
echo OPTION 113 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les applications Game Bar
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-AppxPackage *Gaming* | Select-Object Name,Version | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt114
cls
echo ================================================================
echo OPTION 114 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir le Microsoft Store
echo ================================================================
echo.
echo Execution en cours.
start ms-windows-store:
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt115
cls
echo ================================================================
echo OPTION 115 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir Xbox
echo ================================================================
echo.
echo Execution en cours.
start xbox:
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt116
cls
echo ================================================================
echo OPTION 116 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres captures
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:gaming-gamedvr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt117
cls
echo ================================================================
echo OPTION 117 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres jeux
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:gaming
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt118
cls
echo ================================================================
echo OPTION 118 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les FPS via Xbox Game Bar
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:gaming-gamedvr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt119
cls
echo ================================================================
echo OPTION 119 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher la latence réseau par ping
echo ================================================================
echo.
echo Execution en cours.
ping 1.1.1.1 -n 5
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt120
cls
echo ================================================================
echo OPTION 120 / 500
echo CATEGORIE : GAMING
echo ACTION    : Tester la latence Google
echo ================================================================
echo.
echo Execution en cours.
ping 8.8.8.8 -n 5
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt121
cls
echo ================================================================
echo OPTION 121 / 500
echo CATEGORIE : GAMING
echo ACTION    : Tester la perte de paquets
echo ================================================================
echo.
echo Execution en cours.
pathping 1.1.1.1
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt122
cls
echo ================================================================
echo OPTION 122 / 500
echo CATEGORIE : GAMING
echo ACTION    : Tracer la route vers Cloudflare
echo ================================================================
echo.
echo Execution en cours.
tracert 1.1.1.1
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt123
cls
echo ================================================================
echo OPTION 123 / 500
echo CATEGORIE : GAMING
echo ACTION    : Tracer la route vers Google
echo ================================================================
echo.
echo Execution en cours.
tracert 8.8.8.8
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt124
cls
echo ================================================================
echo OPTION 124 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les ports d’écoute
echo ================================================================
echo.
echo Execution en cours.
netstat -ano | findstr LISTENING
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt125
cls
echo ================================================================
echo OPTION 125 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les connexions TCP
echo ================================================================
echo.
echo Execution en cours.
netstat -ano -p tcp
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt126
cls
echo ================================================================
echo OPTION 126 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les connexions UDP
echo ================================================================
echo.
echo Execution en cours.
netstat -ano -p udp
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt127
cls
echo ================================================================
echo OPTION 127 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher le PID d’un port saisi ensuite
echo ================================================================
echo.
echo Execution en cours.
cmd /c "set /p p=Port: & netstat -ano | findstr :%p%"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt128
cls
echo ================================================================
echo OPTION 128 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir le mélangeur de volume
echo ================================================================
echo.
echo Execution en cours.
start sndvol
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt129
cls
echo ================================================================
echo OPTION 129 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres audio
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:sound
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt130
cls
echo ================================================================
echo OPTION 130 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres microphone
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy-microphone
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt131
cls
echo ================================================================
echo OPTION 131 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres caméra
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy-webcam
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt132
cls
echo ================================================================
echo OPTION 132 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les périphériques de lecture audio
echo ================================================================
echo.
echo Execution en cours.
start mmsys.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt133
cls
echo ================================================================
echo OPTION 133 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les propriétés de la carte graphique
echo ================================================================
echo.
echo Execution en cours.
start devmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt134
cls
echo ================================================================
echo OPTION 134 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les processus actifs
echo ================================================================
echo.
echo Execution en cours.
tasklist
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt135
cls
echo ================================================================
echo OPTION 135 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les processus avec mémoire
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Sort-Object WorkingSet64 -Descending | Select-Object -First 20 Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt136
cls
echo ================================================================
echo OPTION 136 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les processus CPU
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Sort-Object CPU -Descending | Select-Object -First 20 Name,Id,CPU | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt137
cls
echo ================================================================
echo OPTION 137 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les programmes au démarrage
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_StartupCommand | Format-Table Name,Location -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt138
cls
echo ================================================================
echo OPTION 138 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les applications de démarrage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:startupapps
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt139
cls
echo ================================================================
echo OPTION 139 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres notifications
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:notifications
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt140
cls
echo ================================================================
echo OPTION 140 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres concentration
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:quiethours
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt141
cls
echo ================================================================
echo OPTION 141 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres écran de veille
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:lockscreen
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt142
cls
echo ================================================================
echo OPTION 142 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres multitâche
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:multitasking
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt143
cls
echo ================================================================
echo OPTION 143 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les paramètres système avancés
echo ================================================================
echo.
echo Execution en cours.
start sysdm.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt144
cls
echo ================================================================
echo OPTION 144 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les variables d’environnement
echo ================================================================
echo.
echo Execution en cours.
start sysdm.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt145
cls
echo ================================================================
echo OPTION 145 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir les informations DirectX
echo ================================================================
echo.
echo Execution en cours.
start dxdiag
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt146
cls
echo ================================================================
echo OPTION 146 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher le pilote graphique
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Select-Object Name,DriverVersion,DriverDate | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt147
cls
echo ================================================================
echo OPTION 147 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher la résolution actuelle
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Select-Object CurrentHorizontalResolution,CurrentVerticalResolution,CurrentRefreshRate | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt148
cls
echo ================================================================
echo OPTION 148 / 500
echo CATEGORIE : GAMING
echo ACTION    : Afficher les écrans PnP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_DesktopMonitor | Select-Object Name,MonitorType,ScreenWidth,ScreenHeight | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt149
cls
echo ================================================================
echo OPTION 149 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir AMD Software si installé
echo ================================================================
echo.
echo Execution en cours.
start "" "C:\Program Files\AMD\CNext\CNext\RadeonSoftware.exe"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt150
cls
echo ================================================================
echo OPTION 150 / 500
echo CATEGORIE : GAMING
echo ACTION    : Ouvrir le panneau graphique Windows
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display-advancedgraphics
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt151
cls
echo ================================================================
echo OPTION 151 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher le plan actif
echo ================================================================
echo.
echo Execution en cours.
powercfg /getactivescheme
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt152
cls
echo ================================================================
echo OPTION 152 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Lister les plans
echo ================================================================
echo.
echo Execution en cours.
powercfg /list
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt153
cls
echo ================================================================
echo OPTION 153 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Activer le plan Équilibré
echo ================================================================
echo.
echo Execution en cours.
powercfg /setactive SCHEME_BALANCED
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt154
cls
echo ================================================================
echo OPTION 154 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Créer un rapport batterie
echo ================================================================
echo.
echo Execution en cours.
powercfg /batteryreport /output "%USERPROFILE%\Desktop\battery-report.html"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt155
cls
echo ================================================================
echo OPTION 155 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Créer un rapport énergie
echo ================================================================
echo.
echo Execution en cours.
powercfg /energy /output "%USERPROFILE%\Desktop\energy-report.html"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt156
cls
echo ================================================================
echo OPTION 156 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les demandes d’alimentation
echo ================================================================
echo.
echo Execution en cours.
powercfg /requests
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt157
cls
echo ================================================================
echo OPTION 157 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les minuteurs de réveil
echo ================================================================
echo.
echo Execution en cours.
powercfg /waketimers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt158
cls
echo ================================================================
echo OPTION 158 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les périphériques réveillant le PC
echo ================================================================
echo.
echo Execution en cours.
powercfg /devicequery wake_armed
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt159
cls
echo ================================================================
echo OPTION 159 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les périphériques pouvant réveiller le PC
echo ================================================================
echo.
echo Execution en cours.
powercfg /devicequery wake_programmable
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt160
cls
echo ================================================================
echo OPTION 160 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les options d’alimentation
echo ================================================================
echo.
echo Execution en cours.
start powercfg.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt161
cls
echo ================================================================
echo OPTION 161 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les paramètres alimentation
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:powersleep
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt162
cls
echo ================================================================
echo OPTION 162 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir la batterie
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:batterysaver
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt163
cls
echo ================================================================
echo OPTION 163 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher l’état batterie
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Battery | Format-List Name,EstimatedChargeRemaining,BatteryStatus"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt164
cls
echo ================================================================
echo OPTION 164 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les performances CPU
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Counter '\Processor(_Total)\% Processor Time' -SampleInterval 1 -MaxSamples 3 | Select-Object -ExpandProperty CounterSamples | Format-Table InstanceName,CookedValue -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt165
cls
echo ================================================================
echo OPTION 165 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher la fréquence CPU rapportée
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Select-Object Name,CurrentClockSpeed,MaxClockSpeed | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt166
cls
echo ================================================================
echo OPTION 166 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher le nombre de cœurs CPU
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Select-Object NumberOfCores,NumberOfLogicalProcessors | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt167
cls
echo ================================================================
echo OPTION 167 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher la RAM disponible
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "$o=Get-CimInstance Win32_OperatingSystem; [math]::Round($o.FreePhysicalMemory/1MB,2)"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt168
cls
echo ================================================================
echo OPTION 168 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher la RAM totale
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "$o=Get-CimInstance Win32_OperatingSystem; [math]::Round($o.TotalVisibleMemorySize/1MB,2)"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt169
cls
echo ================================================================
echo OPTION 169 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher le fichier d’échange
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_PageFileUsage | Format-Table Name,AllocatedBaseSize,CurrentUsage,PeakUsage -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt170
cls
echo ================================================================
echo OPTION 170 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les paramètres mémoire virtuelle
echo ================================================================
echo.
echo Execution en cours.
start sysdm.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt171
cls
echo ================================================================
echo OPTION 171 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les performances système
echo ================================================================
echo.
echo Execution en cours.
start SystemPropertiesPerformance.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt172
cls
echo ================================================================
echo OPTION 172 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les propriétés système avancées
echo ================================================================
echo.
echo Execution en cours.
start SystemPropertiesAdvanced.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt173
cls
echo ================================================================
echo OPTION 173 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les propriétés protection système
echo ================================================================
echo.
echo Execution en cours.
start SystemPropertiesProtection.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt174
cls
echo ================================================================
echo OPTION 174 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir la restauration système
echo ================================================================
echo.
echo Execution en cours.
start rstrui.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt175
cls
echo ================================================================
echo OPTION 175 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les points de restauration
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ComputerRestorePoint -ErrorAction SilentlyContinue | Format-Table SequenceNumber,Description,CreationTime -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt176
cls
echo ================================================================
echo OPTION 176 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher le temps depuis démarrage
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "(Get-Date)-(Get-CimInstance Win32_OperatingSystem).LastBootUpTime"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt177
cls
echo ================================================================
echo OPTION 177 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher l’état veille
echo ================================================================
echo.
echo Execution en cours.
powercfg /a
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt178
cls
echo ================================================================
echo OPTION 178 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les minuteries actives
echo ================================================================
echo.
echo Execution en cours.
powercfg /query SCHEME_CURRENT SUB_SLEEP
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt179
cls
echo ================================================================
echo OPTION 179 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher le paramètre veille écran
echo ================================================================
echo.
echo Execution en cours.
powercfg /query SCHEME_CURRENT SUB_VIDEO
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt180
cls
echo ================================================================
echo OPTION 180 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher le paramètre sommeil
echo ================================================================
echo.
echo Execution en cours.
powercfg /query SCHEME_CURRENT SUB_SLEEP
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt181
cls
echo ================================================================
echo OPTION 181 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher le paramètre processeur
echo ================================================================
echo.
echo Execution en cours.
powercfg /query SCHEME_CURRENT SUB_PROCESSOR
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt182
cls
echo ================================================================
echo OPTION 182 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les paramètres PCI Express
echo ================================================================
echo.
echo Execution en cours.
powercfg /query SCHEME_CURRENT SUB_PCIEXPRESS
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt183
cls
echo ================================================================
echo OPTION 183 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les paramètres USB
echo ================================================================
echo.
echo Execution en cours.
powercfg /query SCHEME_CURRENT SUB_USB
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt184
cls
echo ================================================================
echo OPTION 184 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les paramètres réseau en veille
echo ================================================================
echo.
echo Execution en cours.
powercfg /query SCHEME_CURRENT SUB_NONE
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt185
cls
echo ================================================================
echo OPTION 185 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le gestionnaire de tâches
echo ================================================================
echo.
echo Execution en cours.
start taskmgr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt186
cls
echo ================================================================
echo OPTION 186 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le moniteur de ressources
echo ================================================================
echo.
echo Execution en cours.
start resmon
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt187
cls
echo ================================================================
echo OPTION 187 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le moniteur de performances
echo ================================================================
echo.
echo Execution en cours.
start perfmon
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt188
cls
echo ================================================================
echo OPTION 188 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le planificateur de tâches
echo ================================================================
echo.
echo Execution en cours.
start taskschd.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt189
cls
echo ================================================================
echo OPTION 189 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les services
echo ================================================================
echo.
echo Execution en cours.
start services.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt190
cls
echo ================================================================
echo OPTION 190 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les événements système
echo ================================================================
echo.
echo Execution en cours.
start eventvwr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt191
cls
echo ================================================================
echo OPTION 191 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le gestionnaire de périphériques
echo ================================================================
echo.
echo Execution en cours.
start devmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt192
cls
echo ================================================================
echo OPTION 192 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les informations système
echo ================================================================
echo.
echo Execution en cours.
start msinfo32
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt193
cls
echo ================================================================
echo OPTION 193 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir DirectX Diagnostic
echo ================================================================
echo.
echo Execution en cours.
start dxdiag
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt194
cls
echo ================================================================
echo OPTION 194 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le diagnostic mémoire Windows
echo ================================================================
echo.
echo Execution en cours.
start mdsched.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt195
cls
echo ================================================================
echo OPTION 195 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir la gestion des disques
echo ================================================================
echo.
echo Execution en cours.
start diskmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt196
cls
echo ================================================================
echo OPTION 196 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir la gestion de l’ordinateur
echo ================================================================
echo.
echo Execution en cours.
start compmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt197
cls
echo ================================================================
echo OPTION 197 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le gestionnaire de certificats
echo ================================================================
echo.
echo Execution en cours.
start certmgr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt198
cls
echo ================================================================
echo OPTION 198 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir le gestionnaire de tâches planifié
echo ================================================================
echo.
echo Execution en cours.
start taskschd.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt199
cls
echo ================================================================
echo OPTION 199 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Ouvrir les performances Windows
echo ================================================================
echo.
echo Execution en cours.
start perfmon
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt200
cls
echo ================================================================
echo OPTION 200 / 500
echo CATEGORIE : PERFORMANCE
echo ACTION    : Afficher les compteurs processeur
echo ================================================================
echo.
echo Execution en cours.
typeperf "\Processor(_Total)\% Processor Time" -sc 3
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt201
cls
echo ================================================================
echo OPTION 201 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Réinitialiser Winsock
echo ================================================================
echo.
echo Execution en cours.
netsh winsock reset
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt202
cls
echo ================================================================
echo OPTION 202 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Réinitialiser TCP/IP
echo ================================================================
echo.
echo Execution en cours.
netsh int ip reset
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt203
cls
echo ================================================================
echo OPTION 203 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les interfaces
echo ================================================================
echo.
echo Execution en cours.
netsh interface show interface
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt204
cls
echo ================================================================
echo OPTION 204 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher la configuration IPv4
echo ================================================================
echo.
echo Execution en cours.
netsh interface ipv4 show config
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt205
cls
echo ================================================================
echo OPTION 205 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les DNS configurés
echo ================================================================
echo.
echo Execution en cours.
netsh interface ipv4 show dns
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt206
cls
echo ================================================================
echo OPTION 206 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les profils Wi-Fi
echo ================================================================
echo.
echo Execution en cours.
netsh wlan show profiles
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt207
cls
echo ================================================================
echo OPTION 207 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher le pilote Wi-Fi
echo ================================================================
echo.
echo Execution en cours.
netsh wlan show drivers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt208
cls
echo ================================================================
echo OPTION 208 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher l’interface Wi-Fi
echo ================================================================
echo.
echo Execution en cours.
netsh wlan show interfaces
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt209
cls
echo ================================================================
echo OPTION 209 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les réseaux Wi-Fi visibles
echo ================================================================
echo.
echo Execution en cours.
netsh wlan show networks
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt210
cls
echo ================================================================
echo OPTION 210 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les statistiques Wi-Fi
echo ================================================================
echo.
echo Execution en cours.
netsh wlan show wirelesscapabilities
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt211
cls
echo ================================================================
echo OPTION 211 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Exporter les profils Wi-Fi
echo ================================================================
echo.
echo Execution en cours.
netsh wlan export profile folder="%USERPROFILE%\Desktop\HUBBOOST-WiFi"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt212
cls
echo ================================================================
echo OPTION 212 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher le pare-feu
echo ================================================================
echo.
echo Execution en cours.
netsh advfirewall show allprofiles
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt213
cls
echo ================================================================
echo OPTION 213 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les règles pare-feu actives
echo ================================================================
echo.
echo Execution en cours.
netsh advfirewall firewall show rule name=all dir=in status=enabled
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt214
cls
echo ================================================================
echo OPTION 214 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les règles pare-feu sortantes
echo ================================================================
echo.
echo Execution en cours.
netsh advfirewall firewall show rule name=all dir=out status=enabled
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt215
cls
echo ================================================================
echo OPTION 215 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir le pare-feu avancé
echo ================================================================
echo.
echo Execution en cours.
start wf.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt216
cls
echo ================================================================
echo OPTION 216 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir les paramètres réseau
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-status
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt217
cls
echo ================================================================
echo OPTION 217 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir Wi-Fi
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-wifi
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt218
cls
echo ================================================================
echo OPTION 218 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir Ethernet
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-ethernet
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt219
cls
echo ================================================================
echo OPTION 219 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir VPN
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-vpn
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt220
cls
echo ================================================================
echo OPTION 220 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir proxy
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-proxy
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt221
cls
echo ================================================================
echo OPTION 221 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir point d’accès mobile
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:network-mobilehotspot
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt222
cls
echo ================================================================
echo OPTION 222 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Vider le cache DNS
echo ================================================================
echo.
echo Execution en cours.
ipconfig /flushdns
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt223
cls
echo ================================================================
echo OPTION 223 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Renouveler l’adresse IP
echo ================================================================
echo.
echo Execution en cours.
ipconfig /renew
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt224
cls
echo ================================================================
echo OPTION 224 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Libérer l’adresse IP
echo ================================================================
echo.
echo Execution en cours.
ipconfig /release
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt225
cls
echo ================================================================
echo OPTION 225 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher l’adresse IPv4
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetIPAddress -AddressFamily IPv4 | Format-Table InterfaceAlias,IPAddress,PrefixLength -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt226
cls
echo ================================================================
echo OPTION 226 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher l’adresse IPv6
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetIPAddress -AddressFamily IPv6 | Format-Table InterfaceAlias,IPAddress,PrefixLength -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt227
cls
echo ================================================================
echo OPTION 227 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les routes IPv4
echo ================================================================
echo.
echo Execution en cours.
Get-NetRoute -AddressFamily IPv4 | Format-Table -Auto
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt228
cls
echo ================================================================
echo OPTION 228 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les routes IPv6
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetRoute -AddressFamily IPv6 | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt229
cls
echo ================================================================
echo OPTION 229 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les DNS par interface
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-DnsClientServerAddress | Format-Table InterfaceAlias,ServerAddresses -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt230
cls
echo ================================================================
echo OPTION 230 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les cartes réseau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetAdapter | Format-Table Name,Status,LinkSpeed,MacAddress -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt231
cls
echo ================================================================
echo OPTION 231 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les statistiques des cartes réseau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetAdapterStatistics | Format-Table Name,ReceivedBytes,SentBytes,ReceivedPacketErrors,OutboundPacketErrors -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt232
cls
echo ================================================================
echo OPTION 232 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les profils réseau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetConnectionProfile | Format-Table Name,InterfaceAlias,NetworkCategory,IPv4Connectivity -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt233
cls
echo ================================================================
echo OPTION 233 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les connexions TCP actives
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetTCPConnection -State Established | Select-Object -First 30 LocalAddress,LocalPort,RemoteAddress,RemotePort,OwningProcess | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt234
cls
echo ================================================================
echo OPTION 234 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les ports TCP à l’écoute
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetTCPConnection -State Listen | Format-Table LocalAddress,LocalPort,OwningProcess -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt235
cls
echo ================================================================
echo OPTION 235 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Afficher les ports UDP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetUDPEndpoint | Select-Object -First 50 LocalAddress,LocalPort,OwningProcess | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt236
cls
echo ================================================================
echo OPTION 236 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tester Cloudflare
echo ================================================================
echo.
echo Execution en cours.
ping 1.1.1.1 -n 5
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt237
cls
echo ================================================================
echo OPTION 237 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tester Google DNS
echo ================================================================
echo.
echo Execution en cours.
ping 8.8.8.8 -n 5
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt238
cls
echo ================================================================
echo OPTION 238 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tester Quad9
echo ================================================================
echo.
echo Execution en cours.
ping 9.9.9.9 -n 5
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt239
cls
echo ================================================================
echo OPTION 239 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Résoudre Cloudflare
echo ================================================================
echo.
echo Execution en cours.
nslookup cloudflare.com
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt240
cls
echo ================================================================
echo OPTION 240 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Résoudre GitHub
echo ================================================================
echo.
echo Execution en cours.
nslookup github.com
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt241
cls
echo ================================================================
echo OPTION 241 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Résoudre Steam
echo ================================================================
echo.
echo Execution en cours.
nslookup steampowered.com
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt242
cls
echo ================================================================
echo OPTION 242 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tracer Cloudflare
echo ================================================================
echo.
echo Execution en cours.
tracert 1.1.1.1
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt243
cls
echo ================================================================
echo OPTION 243 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tracer GitHub
echo ================================================================
echo.
echo Execution en cours.
tracert github.com
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt244
cls
echo ================================================================
echo OPTION 244 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Analyser le chemin Cloudflare
echo ================================================================
echo.
echo Execution en cours.
pathping 1.1.1.1
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt245
cls
echo ================================================================
echo OPTION 245 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tester HTTPS Microsoft
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "try { (Invoke-WebRequest https://www.microsoft.com -UseBasicParsing -TimeoutSec 10).StatusCode } catch { $_.Exception.Message }"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt246
cls
echo ================================================================
echo OPTION 246 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tester HTTPS GitHub
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "try { (Invoke-WebRequest https://github.com -UseBasicParsing -TimeoutSec 10).StatusCode } catch { $_.Exception.Message }"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt247
cls
echo ================================================================
echo OPTION 247 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Tester HTTPS Cloudflare
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "try { (Invoke-WebRequest https://www.cloudflare.com -UseBasicParsing -TimeoutSec 10).StatusCode } catch { $_.Exception.Message }"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt248
cls
echo ================================================================
echo OPTION 248 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir les propriétés Internet
echo ================================================================
echo.
echo Execution en cours.
start inetcpl.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt249
cls
echo ================================================================
echo OPTION 249 / 500
echo CATEGORIE : RESEAU
echo ACTION    : Ouvrir les connexions réseau
echo ================================================================
echo.
echo Execution en cours.
start ncpa.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt250
cls
echo ================================================================
echo OPTION 250 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les volumes
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Volume | Format-Table DriveLetter,FileSystem,HealthStatus,SizeRemaining,Size -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt251
cls
echo ================================================================
echo OPTION 251 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les disques physiques
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PhysicalDisk | Format-Table FriendlyName,MediaType,HealthStatus,OperationalStatus,Size -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt252
cls
echo ================================================================
echo OPTION 252 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les partitions
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Partition | Format-Table DiskNumber,PartitionNumber,DriveLetter,Size -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt253
cls
echo ================================================================
echo OPTION 253 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les disques
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Disk | Format-Table Number,FriendlyName,HealthStatus,OperationalStatus,Size -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt254
cls
echo ================================================================
echo OPTION 254 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir Gestion des disques
echo ================================================================
echo.
echo Execution en cours.
start diskmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt255
cls
echo ================================================================
echo OPTION 255 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir Optimiser les lecteurs
echo ================================================================
echo.
echo Execution en cours.
start dfrgui
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt256
cls
echo ================================================================
echo OPTION 256 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher l’état TRIM
echo ================================================================
echo.
echo Execution en cours.
fsutil behavior query DisableDeleteNotify
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt257
cls
echo ================================================================
echo OPTION 257 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Activer TRIM NTFS
echo ================================================================
echo.
echo Execution en cours.
fsutil behavior set DisableDeleteNotify 0
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt258
cls
echo ================================================================
echo OPTION 258 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Analyser le disque C:
echo ================================================================
echo.
echo Execution en cours.
chkdsk C: /scan
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt259
cls
echo ================================================================
echo OPTION 259 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Vérifier l’intégrité du disque C:
echo ================================================================
echo.
echo Execution en cours.
chkdsk C: /scan
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt260
cls
echo ================================================================
echo OPTION 260 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher l’espace du disque C:
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Volume -DriveLetter C | Format-List DriveLetter,FileSystem,SizeRemaining,Size"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt261
cls
echo ================================================================
echo OPTION 261 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les fichiers temporaires volumineux
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:TEMP -File -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select-Object -First 30 FullName,@{N='MB';E={[math]::Round($_.Length/1MB,1)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt262
cls
echo ================================================================
echo OPTION 262 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les gros fichiers du profil utilisateur
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:USERPROFILE -File -Recurse -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select-Object -First 20 FullName,@{N='MB';E={[math]::Round($_.Length/1MB,1)}} | Format-Table -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt263
cls
echo ================================================================
echo OPTION 263 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les gros fichiers du Bureau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:USERPROFILE\Desktop -File -Recurse -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select-Object -First 20 FullName,@{N='MB';E={[math]::Round($_.Length/1MB,1)}} | Format-Table -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt264
cls
echo ================================================================
echo OPTION 264 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les gros fichiers Téléchargements
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:USERPROFILE\Downloads -File -Recurse -ErrorAction SilentlyContinue | Sort-Object Length -Descending | Select-Object -First 20 FullName,@{N='MB';E={[math]::Round($_.Length/1MB,1)}} | Format-Table -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt265
cls
echo ================================================================
echo OPTION 265 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier Téléchargements
echo ================================================================
echo.
echo Execution en cours.
start shell:downloads
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt266
cls
echo ================================================================
echo OPTION 266 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le Bureau
echo ================================================================
echo.
echo Execution en cours.
start shell:desktop
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt267
cls
echo ================================================================
echo OPTION 267 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir Documents
echo ================================================================
echo.
echo Execution en cours.
start shell:personal
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt268
cls
echo ================================================================
echo OPTION 268 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir Images
echo ================================================================
echo.
echo Execution en cours.
start shell:my pictures
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt269
cls
echo ================================================================
echo OPTION 269 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir Vidéos
echo ================================================================
echo.
echo Execution en cours.
start shell:my video
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt270
cls
echo ================================================================
echo OPTION 270 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir Musique
echo ================================================================
echo.
echo Execution en cours.
start shell:my music
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt271
cls
echo ================================================================
echo OPTION 271 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir les lecteurs
echo ================================================================
echo.
echo Execution en cours.
start shell:MyComputerFolder
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt272
cls
echo ================================================================
echo OPTION 272 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir Ce PC
echo ================================================================
echo.
echo Execution en cours.
start shell:MyComputerFolder
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt273
cls
echo ================================================================
echo OPTION 273 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier AppData local
echo ================================================================
echo.
echo Execution en cours.
start %LOCALAPPDATA%
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt274
cls
echo ================================================================
echo OPTION 274 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier AppData Roaming
echo ================================================================
echo.
echo Execution en cours.
start %APPDATA%
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt275
cls
echo ================================================================
echo OPTION 275 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier ProgramData
echo ================================================================
echo.
echo Execution en cours.
start %PROGRAMDATA%
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt276
cls
echo ================================================================
echo OPTION 276 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier Program Files
echo ================================================================
echo.
echo Execution en cours.
start %PROGRAMFILES%
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt277
cls
echo ================================================================
echo OPTION 277 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier Program Files x86
echo ================================================================
echo.
echo Execution en cours.
start %PROGRAMFILES(X86)%
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt278
cls
echo ================================================================
echo OPTION 278 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier Windows
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt279
cls
echo ================================================================
echo OPTION 279 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier System32
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\System32
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt280
cls
echo ================================================================
echo OPTION 280 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier des pilotes
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\System32\drivers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt281
cls
echo ================================================================
echo OPTION 281 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir le dossier SoftwareDistribution
echo ================================================================
echo.
echo Execution en cours.
start %WINDIR%\SoftwareDistribution
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt282
cls
echo ================================================================
echo OPTION 282 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher la taille du dossier Temp
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "$p=$env:TEMP; $s=(Get-ChildItem $p -File -Recurse -ErrorAction SilentlyContinue | Measure-Object Length -Sum).Sum; [math]::Round($s/1GB,2)"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt283
cls
echo ================================================================
echo OPTION 283 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher la taille du dossier Windows Temp
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "$p=$env:WINDIR+'\Temp'; $s=(Get-ChildItem $p -File -Recurse -ErrorAction SilentlyContinue | Measure-Object Length -Sum).Sum; [math]::Round($s/1GB,2)"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt284
cls
echo ================================================================
echo OPTION 284 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les fichiers récents du Bureau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:USERPROFILE\Desktop -File -ErrorAction SilentlyContinue | Sort-Object LastWriteTime -Descending | Select-Object -First 20 Name,LastWriteTime | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt285
cls
echo ================================================================
echo OPTION 285 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les fichiers récents Téléchargements
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:USERPROFILE\Downloads -File -ErrorAction SilentlyContinue | Sort-Object LastWriteTime -Descending | Select-Object -First 20 Name,LastWriteTime | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt286
cls
echo ================================================================
echo OPTION 286 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les fichiers récemment modifiés dans Temp
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:TEMP -File -ErrorAction SilentlyContinue | Sort-Object LastWriteTime -Descending | Select-Object -First 20 Name,LastWriteTime | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt287
cls
echo ================================================================
echo OPTION 287 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les fichiers cachés du Bureau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:USERPROFILE\Desktop -Force | Format-Table Mode,Name,Length -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt288
cls
echo ================================================================
echo OPTION 288 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les fichiers cachés Téléchargements
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:USERPROFILE\Downloads -Force | Format-Table Mode,Name,Length -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt289
cls
echo ================================================================
echo OPTION 289 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les extensions de fichiers du système
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ItemProperty 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' | Select-Object HideFileExt,ShowSuperHidden"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt290
cls
echo ================================================================
echo OPTION 290 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir les paramètres de stockage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:storagesense
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt291
cls
echo ================================================================
echo OPTION 291 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir les paramètres stockage avancés
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:storage
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt292
cls
echo ================================================================
echo OPTION 292 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir les recommandations de nettoyage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:storagerecommendations
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt293
cls
echo ================================================================
echo OPTION 293 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir l’optimisation des lecteurs
echo ================================================================
echo.
echo Execution en cours.
start dfrgui
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt294
cls
echo ================================================================
echo OPTION 294 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les volumes BitLocker
echo ================================================================
echo.
echo Execution en cours.
manage-bde -status
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt295
cls
echo ================================================================
echo OPTION 295 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir BitLocker
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:deviceencryption
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt296
cls
echo ================================================================
echo OPTION 296 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les dossiers de cache Edge
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:LOCALAPPDATA\Microsoft\Edge\User Data -Directory -ErrorAction SilentlyContinue | Select-Object Name,FullName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt297
cls
echo ================================================================
echo OPTION 297 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les dossiers de cache Chrome
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:LOCALAPPDATA\Google\Chrome\User Data -Directory -ErrorAction SilentlyContinue | Select-Object Name,FullName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt298
cls
echo ================================================================
echo OPTION 298 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Afficher les dossiers de cache Brave
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ChildItem $env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data -Directory -ErrorAction SilentlyContinue | Select-Object Name,FullName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt299
cls
echo ================================================================
echo OPTION 299 / 500
echo CATEGORIE : STOCKAGE
echo ACTION    : Ouvrir l’Explorateur
echo ================================================================
echo.
echo Execution en cours.
start explorer.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt300
cls
echo ================================================================
echo OPTION 300 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Vérifier les fichiers système
echo ================================================================
echo.
echo Execution en cours.
sfc /verifyonly
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt301
cls
echo ================================================================
echo OPTION 301 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Scanner les fichiers système
echo ================================================================
echo.
echo Execution en cours.
sfc /scannow
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt302
cls
echo ================================================================
echo OPTION 302 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Vérifier l’image Windows
echo ================================================================
echo.
echo Execution en cours.
DISM /Online /Cleanup-Image /CheckHealth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt303
cls
echo ================================================================
echo OPTION 303 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Scanner l’image Windows
echo ================================================================
echo.
echo Execution en cours.
DISM /Online /Cleanup-Image /ScanHealth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt304
cls
echo ================================================================
echo OPTION 304 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Réparer l’image Windows
echo ================================================================
echo.
echo Execution en cours.
DISM /Online /Cleanup-Image /RestoreHealth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt305
cls
echo ================================================================
echo OPTION 305 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Nettoyer les composants Windows
echo ================================================================
echo.
echo Execution en cours.
DISM /Online /Cleanup-Image /StartComponentCleanup
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt306
cls
echo ================================================================
echo OPTION 306 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher l’état du service Windows Update
echo ================================================================
echo.
echo Execution en cours.
sc query wuauserv
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt307
cls
echo ================================================================
echo OPTION 307 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher l’état du service BITS
echo ================================================================
echo.
echo Execution en cours.
sc query bits
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt308
cls
echo ================================================================
echo OPTION 308 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Redémarrer Windows Update
echo ================================================================
echo.
echo Execution en cours.
net stop wuauserv & net start wuauserv
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt309
cls
echo ================================================================
echo OPTION 309 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Redémarrer BITS
echo ================================================================
echo.
echo Execution en cours.
net stop bits & net start bits
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt310
cls
echo ================================================================
echo OPTION 310 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir Windows Update
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:windowsupdate
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt311
cls
echo ================================================================
echo OPTION 311 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les options Windows Update
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:windowsupdate-options
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt312
cls
echo ================================================================
echo OPTION 312 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir l’historique Windows Update
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:windowsupdate-history
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt313
cls
echo ================================================================
echo OPTION 313 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les options de récupération
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:recovery
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt314
cls
echo ================================================================
echo OPTION 314 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir le dépannage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:troubleshoot
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt315
cls
echo ================================================================
echo OPTION 315 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir le dépannage audio
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:troubleshoot
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt316
cls
echo ================================================================
echo OPTION 316 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir le dépannage réseau
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:troubleshoot
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt317
cls
echo ================================================================
echo OPTION 317 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir le dépannage Windows Update
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:troubleshoot
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt318
cls
echo ================================================================
echo OPTION 318 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir la restauration système
echo ================================================================
echo.
echo Execution en cours.
start rstrui.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt319
cls
echo ================================================================
echo OPTION 319 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir la récupération avancée
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:recovery
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt320
cls
echo ================================================================
echo OPTION 320 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les paramètres de sauvegarde
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:backup
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt321
cls
echo ================================================================
echo OPTION 321 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir la sécurité Windows
echo ================================================================
echo.
echo Execution en cours.
start windowsdefender:
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt322
cls
echo ================================================================
echo OPTION 322 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir l’historique de protection
echo ================================================================
echo.
echo Execution en cours.
start windowsdefender:
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt323
cls
echo ================================================================
echo OPTION 323 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir la protection contre les virus
echo ================================================================
echo.
echo Execution en cours.
start windowsdefender:
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt324
cls
echo ================================================================
echo OPTION 324 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir le pare-feu Windows
echo ================================================================
echo.
echo Execution en cours.
start firewall.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt325
cls
echo ================================================================
echo OPTION 325 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les options Defender
echo ================================================================
echo.
echo Execution en cours.
start windowsdefender:
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt326
cls
echo ================================================================
echo OPTION 326 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher l’état Defender
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-MpComputerStatus | Select-Object AMServiceEnabled,AntivirusEnabled,RealTimeProtectionEnabled,AntivirusSignatureVersion | Format-List"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt327
cls
echo ================================================================
echo OPTION 327 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Mettre à jour les signatures Defender
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Update-MpSignature"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt328
cls
echo ================================================================
echo OPTION 328 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Lancer une analyse rapide Defender
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Start-MpScan -ScanType QuickScan"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt329
cls
echo ================================================================
echo OPTION 329 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher les exclusions Defender
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-MpPreference | Select-Object -ExpandProperty ExclusionPath"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt330
cls
echo ================================================================
echo OPTION 330 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher le statut du pare-feu
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetFirewallProfile | Format-Table Name,Enabled,DefaultInboundAction,DefaultOutboundAction -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt331
cls
echo ================================================================
echo OPTION 331 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher les profils de sécurité réseau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetFirewallProfile | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt332
cls
echo ================================================================
echo OPTION 332 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher les services arrêtés
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Service | Where-Object Status -eq Stopped | Select-Object -First 50 Name,DisplayName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt333
cls
echo ================================================================
echo OPTION 333 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher les services en démarrage automatique
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Service | Where-Object StartMode -eq Auto | Select-Object -First 50 Name,State,StartMode | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt334
cls
echo ================================================================
echo OPTION 334 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher les services en erreur
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Service | Where-Object State -eq 'Stopped' | Select-Object -First 50 Name,StartMode,StartName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt335
cls
echo ================================================================
echo OPTION 335 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les services
echo ================================================================
echo.
echo Execution en cours.
start services.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt336
cls
echo ================================================================
echo OPTION 336 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir l’observateur d’événements
echo ================================================================
echo.
echo Execution en cours.
start eventvwr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt337
cls
echo ================================================================
echo OPTION 337 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les journaux système
echo ================================================================
echo.
echo Execution en cours.
start eventvwr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt338
cls
echo ================================================================
echo OPTION 338 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir le planificateur
echo ================================================================
echo.
echo Execution en cours.
start taskschd.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt339
cls
echo ================================================================
echo OPTION 339 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir la stratégie de sécurité locale
echo ================================================================
echo.
echo Execution en cours.
start secpol.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt340
cls
echo ================================================================
echo OPTION 340 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les utilisateurs locaux
echo ================================================================
echo.
echo Execution en cours.
start lusrmgr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt341
cls
echo ================================================================
echo OPTION 341 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir la gestion de l’ordinateur
echo ================================================================
echo.
echo Execution en cours.
start compmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt342
cls
echo ================================================================
echo OPTION 342 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir le registre
echo ================================================================
echo.
echo Execution en cours.
start regedit.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt343
cls
echo ================================================================
echo OPTION 343 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir l’éditeur de stratégie de groupe
echo ================================================================
echo.
echo Execution en cours.
start gpedit.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt344
cls
echo ================================================================
echo OPTION 344 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les variables système
echo ================================================================
echo.
echo Execution en cours.
start sysdm.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt345
cls
echo ================================================================
echo OPTION 345 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les paramètres d’activation
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:activation
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt346
cls
echo ================================================================
echo OPTION 346 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Ouvrir les paramètres de licence
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:activation
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt347
cls
echo ================================================================
echo OPTION 347 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher l’état d’activation Windows
echo ================================================================
echo.
echo Execution en cours.
cscript //nologo %WINDIR%\System32\slmgr.vbs /xpr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt348
cls
echo ================================================================
echo OPTION 348 / 500
echo CATEGORIE : REPARATION
echo ACTION    : Afficher les détails de licence Windows
echo ================================================================
echo.
echo Execution en cours.
cscript //nologo %WINDIR%\System32\slmgr.vbs /dlv
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt349
cls
echo ================================================================
echo OPTION 349 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir le Gestionnaire de périphériques
echo ================================================================
echo.
echo Execution en cours.
start devmgmt.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt350
cls
echo ================================================================
echo OPTION 350 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les périphériques Plug and Play
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -PresentOnly | Select-Object -First 80 Status,Class,FriendlyName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt351
cls
echo ================================================================
echo OPTION 351 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les périphériques en erreur
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice | Where-Object Status -ne 'OK' | Format-Table Status,Class,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt352
cls
echo ================================================================
echo OPTION 352 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les pilotes signés
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_PnPSignedDriver | Select-Object -First 50 DeviceName,DriverVersion,Manufacturer | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt353
cls
echo ================================================================
echo OPTION 353 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les pilotes non Microsoft
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_PnPSignedDriver | Where-Object Manufacturer -notmatch 'Microsoft' | Select-Object -First 80 DeviceName,DriverVersion,Manufacturer | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt354
cls
echo ================================================================
echo OPTION 354 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher le pilote GPU
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Format-Table Name,DriverVersion,DriverDate -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt355
cls
echo ================================================================
echo OPTION 355 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher le pilote audio
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_SoundDevice | Format-Table Name,Status -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt356
cls
echo ================================================================
echo OPTION 356 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les contrôleurs réseau
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-NetAdapter | Format-Table Name,InterfaceDescription,Status,LinkSpeed -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt357
cls
echo ================================================================
echo OPTION 357 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les contrôleurs USB
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class USB | Format-Table Status,FriendlyName,InstanceId -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt358
cls
echo ================================================================
echo OPTION 358 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les claviers
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Keyboard | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt359
cls
echo ================================================================
echo OPTION 359 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les souris
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Mouse | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt360
cls
echo ================================================================
echo OPTION 360 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les moniteurs
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Monitor | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt361
cls
echo ================================================================
echo OPTION 361 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les batteries
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Battery | Format-Table Name,Status,EstimatedChargeRemaining -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt362
cls
echo ================================================================
echo OPTION 362 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les contrôleurs de stockage
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class SCSIAdapter | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt363
cls
echo ================================================================
echo OPTION 363 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les processeurs PnP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Processor | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt364
cls
echo ================================================================
echo OPTION 364 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les cartes graphiques PnP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Display | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt365
cls
echo ================================================================
echo OPTION 365 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les cartes réseau PnP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Net | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt366
cls
echo ================================================================
echo OPTION 366 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les imprimantes
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:printers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt367
cls
echo ================================================================
echo OPTION 367 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir Bluetooth
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:bluetooth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt368
cls
echo ================================================================
echo OPTION 368 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir USB
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:usb
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt369
cls
echo ================================================================
echo OPTION 369 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les périphériques connectés
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:connecteddevices
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt370
cls
echo ================================================================
echo OPTION 370 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres souris
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:mousetouchpad
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt371
cls
echo ================================================================
echo OPTION 371 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres clavier
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:keyboard
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt372
cls
echo ================================================================
echo OPTION 372 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres stylet
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:pen
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt373
cls
echo ================================================================
echo OPTION 373 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres tactile
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:tablet
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt374
cls
echo ================================================================
echo OPTION 374 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres caméra
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:camera
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt375
cls
echo ================================================================
echo OPTION 375 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres microphone
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:sound
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt376
cls
echo ================================================================
echo OPTION 376 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres audio
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:sound
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt377
cls
echo ================================================================
echo OPTION 377 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres affichage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt378
cls
echo ================================================================
echo OPTION 378 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres affichage avancé
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display-advanced
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt379
cls
echo ================================================================
echo OPTION 379 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres HDR
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display-hdr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt380
cls
echo ================================================================
echo OPTION 380 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres luminosité
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:display
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt381
cls
echo ================================================================
echo OPTION 381 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les périphériques audio
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class AudioEndpoint | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt382
cls
echo ================================================================
echo OPTION 382 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les contrôleurs Bluetooth
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Bluetooth | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt383
cls
echo ================================================================
echo OPTION 383 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les périphériques de caméra
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Camera | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt384
cls
echo ================================================================
echo OPTION 384 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les périphériques HID
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class HIDClass | Select-Object -First 60 Status,FriendlyName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt385
cls
echo ================================================================
echo OPTION 385 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les périphériques de batterie
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Battery | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt386
cls
echo ================================================================
echo OPTION 386 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les contrôleurs système
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class System | Select-Object -First 60 Status,FriendlyName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt387
cls
echo ================================================================
echo OPTION 387 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les contrôleurs mémoire
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Memory | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt388
cls
echo ================================================================
echo OPTION 388 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les ports COM
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class Ports | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt389
cls
echo ================================================================
echo OPTION 389 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les hubs USB
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice -Class USB | Where-Object FriendlyName -match 'Hub' | Format-Table Status,FriendlyName -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt390
cls
echo ================================================================
echo OPTION 390 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Afficher les périphériques récemment connectés
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice | Sort-Object Present -Descending | Select-Object -First 50 Status,Class,FriendlyName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt391
cls
echo ================================================================
echo OPTION 391 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres Bluetooth
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:bluetooth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt392
cls
echo ================================================================
echo OPTION 392 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres appareils
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:bluetooth
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt393
cls
echo ================================================================
echo OPTION 393 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres imprimantes
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:printers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt394
cls
echo ================================================================
echo OPTION 394 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres téléphone
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:mobile-devices
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt395
cls
echo ================================================================
echo OPTION 395 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres appareil photo
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:camera
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt396
cls
echo ================================================================
echo OPTION 396 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir les paramètres appareils audio
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:sound
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt397
cls
echo ================================================================
echo OPTION 397 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir le panneau de contrôle classique
echo ================================================================
echo.
echo Execution en cours.
start control.exe
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt398
cls
echo ================================================================
echo OPTION 398 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir le panneau périphériques et imprimantes
echo ================================================================
echo.
echo Execution en cours.
start control.exe printers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt399
cls
echo ================================================================
echo OPTION 399 / 500
echo CATEGORIE : PERIPHERIQUES
echo ACTION    : Ouvrir le panneau souris
echo ================================================================
echo.
echo Execution en cours.
start main.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt400
cls
echo ================================================================
echo OPTION 400 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Lister tous les processus
echo ================================================================
echo.
echo Execution en cours.
tasklist
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt401
cls
echo ================================================================
echo OPTION 401 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Lister les processus avec services
echo ================================================================
echo.
echo Execution en cours.
tasklist /svc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt402
cls
echo ================================================================
echo OPTION 402 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Lister les processus avec modules
echo ================================================================
echo.
echo Execution en cours.
tasklist /m
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt403
cls
echo ================================================================
echo OPTION 403 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus utilisant beaucoup de RAM
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Sort-Object WorkingSet64 -Descending | Select-Object -First 30 Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt404
cls
echo ================================================================
echo OPTION 404 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus utilisant le CPU
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Sort-Object CPU -Descending | Select-Object -First 30 Name,Id,CPU | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt405
cls
echo ================================================================
echo OPTION 405 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus récents
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Sort-Object StartTime -Descending -ErrorAction SilentlyContinue | Select-Object -First 30 Name,Id,StartTime | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt406
cls
echo ================================================================
echo OPTION 406 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les applications graphiques
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object MainWindowTitle | Select-Object Name,Id,MainWindowTitle | Format-Table -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt407
cls
echo ================================================================
echo OPTION 407 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services
echo ================================================================
echo.
echo Execution en cours.
sc query
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt408
cls
echo ================================================================
echo OPTION 408 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services en cours
echo ================================================================
echo.
echo Execution en cours.
sc query state= running
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt409
cls
echo ================================================================
echo OPTION 409 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services arrêtés
echo ================================================================
echo.
echo Execution en cours.
sc query state= inactive
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt410
cls
echo ================================================================
echo OPTION 410 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services automatiques
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Service | Where-Object StartMode -eq Auto | Format-Table Name,State,StartMode -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt411
cls
echo ================================================================
echo OPTION 411 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services manuels
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Service | Where-Object StartMode -eq Manual | Select-Object -First 60 Name,State,StartMode | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt412
cls
echo ================================================================
echo OPTION 412 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services désactivés
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Service | Where-Object StartMode -eq Disabled | Format-Table Name,State,StartMode -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt413
cls
echo ================================================================
echo OPTION 413 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services Microsoft
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Service | Where-Object PathName -match 'Windows' | Select-Object -First 60 Name,State,StartMode | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt414
cls
echo ================================================================
echo OPTION 414 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les services tiers
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Service | Where-Object PathName -notmatch 'Windows' | Select-Object -First 60 Name,State,StartMode,DisplayName | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt415
cls
echo ================================================================
echo OPTION 415 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir les services
echo ================================================================
echo.
echo Execution en cours.
start services.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt416
cls
echo ================================================================
echo OPTION 416 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir le gestionnaire des tâches
echo ================================================================
echo.
echo Execution en cours.
start taskmgr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt417
cls
echo ================================================================
echo OPTION 417 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir les applications au démarrage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:startupapps
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt418
cls
echo ================================================================
echo OPTION 418 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les entrées de démarrage
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_StartupCommand | Format-Table Name,Command,Location -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt419
cls
echo ================================================================
echo OPTION 419 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les tâches planifiées actives
echo ================================================================
echo.
echo Execution en cours.
schtasks /query /fo table /nh
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt420
cls
echo ================================================================
echo OPTION 420 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les tâches planifiées en détail
echo ================================================================
echo.
echo Execution en cours.
schtasks /query /fo list
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt421
cls
echo ================================================================
echo OPTION 421 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir le planificateur
echo ================================================================
echo.
echo Execution en cours.
start taskschd.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt422
cls
echo ================================================================
echo OPTION 422 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les tâches Microsoft
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ScheduledTask | Where-Object TaskPath -like '\Microsoft\*' | Select-Object -First 60 TaskName,TaskPath,State | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt423
cls
echo ================================================================
echo OPTION 423 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les tâches tierces
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-ScheduledTask | Where-Object TaskPath -notlike '\Microsoft\*' | Select-Object -First 60 TaskName,TaskPath,State | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt424
cls
echo ================================================================
echo OPTION 424 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus suspendus
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Responding -eq $false | Format-Table Name,Id,Responding -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt425
cls
echo ================================================================
echo OPTION 425 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus sans fenêtre
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object MainWindowHandle -eq 0 | Select-Object -First 50 Name,Id | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt426
cls
echo ================================================================
echo OPTION 426 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les fenêtres ouvertes
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object MainWindowTitle | Select-Object Name,MainWindowTitle | Format-Table -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt427
cls
echo ================================================================
echo OPTION 427 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les applications Store en cours
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Path -like '*WindowsApps*' | Select-Object Name,Id | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt428
cls
echo ================================================================
echo OPTION 428 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus de navigateur
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'chrome|msedge|brave|firefox|opera' | Select-Object Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt429
cls
echo ================================================================
echo OPTION 429 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus de jeu connus
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'steam|epic|roblox|fortnite|valorant|cs2|gta' | Select-Object Name,Id | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt430
cls
echo ================================================================
echo OPTION 430 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus Discord
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'discord' | Select-Object Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt431
cls
echo ================================================================
echo OPTION 431 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus Steam
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'steam' | Select-Object Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt432
cls
echo ================================================================
echo OPTION 432 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus AMD
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'AMD|Radeon' | Select-Object Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt433
cls
echo ================================================================
echo OPTION 433 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus HP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'HP' | Select-Object Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt434
cls
echo ================================================================
echo OPTION 434 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus Windows Defender
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'MsMpEng|SecurityHealth' | Select-Object Name,Id,@{N='RAM_MB';E={[math]::Round($_.WorkingSet64/1MB,0)}} | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt435
cls
echo ================================================================
echo OPTION 435 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus Windows Update
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Name -match 'MoUsoCoreWorker|UsoClient' | Select-Object Name,Id | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt436
cls
echo ================================================================
echo OPTION 436 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus qui ont un chemin
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object Path -ErrorAction SilentlyContinue | Select-Object -First 60 Name,Id,Path | Format-Table -Wrap -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt437
cls
echo ================================================================
echo OPTION 437 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les processus 64 bits
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Process | Where-Object { $_.Path -and $_.Path -match 'System32|Program Files' } | Select-Object -First 50 Name,Id | Format-Table -Auto"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt438
cls
echo ================================================================
echo OPTION 438 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les applications de démarrage utilisateur
echo ================================================================
echo.
echo Execution en cours.
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\Run
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt439
cls
echo ================================================================
echo OPTION 439 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les applications de démarrage machine
echo ================================================================
echo.
echo Execution en cours.
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt440
cls
echo ================================================================
echo OPTION 440 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les tâches planifiées de démarrage
echo ================================================================
echo.
echo Execution en cours.
schtasks /query /fo list | findstr /i "Boot Logon Startup"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt441
cls
echo ================================================================
echo OPTION 441 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir les dossiers de démarrage
echo ================================================================
echo.
echo Execution en cours.
start shell:startup
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt442
cls
echo ================================================================
echo OPTION 442 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir le dossier de démarrage global
echo ================================================================
echo.
echo Execution en cours.
start shell:common startup
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt443
cls
echo ================================================================
echo OPTION 443 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir les services
echo ================================================================
echo.
echo Execution en cours.
start services.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt444
cls
echo ================================================================
echo OPTION 444 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir le planificateur
echo ================================================================
echo.
echo Execution en cours.
start taskschd.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt445
cls
echo ================================================================
echo OPTION 445 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir le gestionnaire des tâches
echo ================================================================
echo.
echo Execution en cours.
start taskmgr
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt446
cls
echo ================================================================
echo OPTION 446 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir le moniteur de ressources
echo ================================================================
echo.
echo Execution en cours.
start resmon
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt447
cls
echo ================================================================
echo OPTION 447 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir le moniteur de performances
echo ================================================================
echo.
echo Execution en cours.
start perfmon
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt448
cls
echo ================================================================
echo OPTION 448 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Ouvrir les événements
echo ================================================================
echo.
echo Execution en cours.
start eventvwr.msc
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt449
cls
echo ================================================================
echo OPTION 449 / 500
echo CATEGORIE : PROCESSUS
echo ACTION    : Afficher les handles d’un processus choisi
echo ================================================================
echo.
echo Execution en cours.
cmd /c "set /p n=Nom du processus: & tasklist /fi \"IMAGENAME eq %n%\""
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt450
cls
echo ================================================================
echo OPTION 450 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport système texte
echo ================================================================
echo.
echo Execution en cours.
systeminfo > "%USERPROFILE%\Desktop\HUBBOOST-systeminfo.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt451
cls
echo ================================================================
echo OPTION 451 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport réseau texte
echo ================================================================
echo.
echo Execution en cours.
ipconfig /all > "%USERPROFILE%\Desktop\HUBBOOST-network.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt452
cls
echo ================================================================
echo OPTION 452 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport processus texte
echo ================================================================
echo.
echo Execution en cours.
tasklist /v > "%USERPROFILE%\Desktop\HUBBOOST-processes.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt453
cls
echo ================================================================
echo OPTION 453 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport services texte
echo ================================================================
echo.
echo Execution en cours.
sc query > "%USERPROFILE%\Desktop\HUBBOOST-services.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt454
cls
echo ================================================================
echo OPTION 454 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport pilotes texte
echo ================================================================
echo.
echo Execution en cours.
driverquery /v > "%USERPROFILE%\Desktop\HUBBOOST-drivers.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt455
cls
echo ================================================================
echo OPTION 455 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport disques texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Disk | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-disks.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt456
cls
echo ================================================================
echo OPTION 456 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport volumes texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-Volume | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-volumes.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt457
cls
echo ================================================================
echo OPTION 457 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport GPU texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_VideoController | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-gpu.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt458
cls
echo ================================================================
echo OPTION 458 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport CPU texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-cpu.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt459
cls
echo ================================================================
echo OPTION 459 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport RAM texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_ComputerSystem | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-ram.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt460
cls
echo ================================================================
echo OPTION 460 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport BIOS texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_BIOS | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-bios.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt461
cls
echo ================================================================
echo OPTION 461 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport carte mère texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_BaseBoard | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-motherboard.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt462
cls
echo ================================================================
echo OPTION 462 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport batterie texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_Battery | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-battery.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt463
cls
echo ================================================================
echo OPTION 463 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport démarrage texte
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-CimInstance Win32_StartupCommand | Format-List * | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-startup.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt464
cls
echo ================================================================
echo OPTION 464 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport tâches planifiées
echo ================================================================
echo.
echo Execution en cours.
schtasks /query /fo list > "%USERPROFILE%\Desktop\HUBBOOST-tasks.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt465
cls
echo ================================================================
echo OPTION 465 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport pare-feu
echo ================================================================
echo.
echo Execution en cours.
netsh advfirewall show allprofiles > "%USERPROFILE%\Desktop\HUBBOOST-firewall.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt466
cls
echo ================================================================
echo OPTION 466 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport DNS
echo ================================================================
echo.
echo Execution en cours.
ipconfig /displaydns > "%USERPROFILE%\Desktop\HUBBOOST-dns-cache.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt467
cls
echo ================================================================
echo OPTION 467 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport routes
echo ================================================================
echo.
echo Execution en cours.
route print > "%USERPROFILE%\Desktop\HUBBOOST-routes.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt468
cls
echo ================================================================
echo OPTION 468 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport connexions
echo ================================================================
echo.
echo Execution en cours.
netstat -ano > "%USERPROFILE%\Desktop\HUBBOOST-netstat.txt"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt469
cls
echo ================================================================
echo OPTION 469 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Créer un rapport PnP
echo ================================================================
echo.
echo Execution en cours.
powershell -NoProfile -Command "Get-PnpDevice | Format-Table -Auto | Out-File '$env:USERPROFILE\Desktop\HUBBOOST-pnp.txt'"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt470
cls
echo ================================================================
echo OPTION 470 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir le dossier des rapports HUBBOOST
echo ================================================================
echo.
echo Execution en cours.
start "%USERPROFILE%\Desktop"
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt471
cls
echo ================================================================
echo OPTION 471 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres de confidentialité générale
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt472
cls
echo ================================================================
echo OPTION 472 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres de diagnostic
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy-feedback
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt473
cls
echo ================================================================
echo OPTION 473 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les autorisations des applications
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt474
cls
echo ================================================================
echo OPTION 474 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres localisation
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy-location
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt475
cls
echo ================================================================
echo OPTION 475 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres caméra
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy-webcam
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt476
cls
echo ================================================================
echo OPTION 476 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres microphone
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:privacy-microphone
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt477
cls
echo ================================================================
echo OPTION 477 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres notifications
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:notifications
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt478
cls
echo ================================================================
echo OPTION 478 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres comptes
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:accounts
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt479
cls
echo ================================================================
echo OPTION 479 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les options de connexion
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:signinoptions
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt480
cls
echo ================================================================
echo OPTION 480 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres utilisateurs
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:otherusers
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt481
cls
echo ================================================================
echo OPTION 481 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les informations compte
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:yourinfo
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt482
cls
echo ================================================================
echo OPTION 482 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres synchronisation
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:sync
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt483
cls
echo ================================================================
echo OPTION 483 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres langue
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:regionlanguage
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt484
cls
echo ================================================================
echo OPTION 484 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres heure
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:dateandtime
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt485
cls
echo ================================================================
echo OPTION 485 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres clavier
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:keyboard
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt486
cls
echo ================================================================
echo OPTION 486 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres souris
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:mousetouchpad
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt487
cls
echo ================================================================
echo OPTION 487 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres accessibilité
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:easeofaccess
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt488
cls
echo ================================================================
echo OPTION 488 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres police
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:fonts
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt489
cls
echo ================================================================
echo OPTION 489 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres personnalisation
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:personalization
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt490
cls
echo ================================================================
echo OPTION 490 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres couleurs
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:colors
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt491
cls
echo ================================================================
echo OPTION 491 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres thème
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:themes
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt492
cls
echo ================================================================
echo OPTION 492 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres barre des tâches
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:taskbar
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt493
cls
echo ================================================================
echo OPTION 493 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres menu Démarrer
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:personalization-start
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt494
cls
echo ================================================================
echo OPTION 494 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres écran de verrouillage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:lockscreen
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt495
cls
echo ================================================================
echo OPTION 495 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres applications par défaut
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:defaultapps
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt496
cls
echo ================================================================
echo OPTION 496 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres stockage
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:storage
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt497
cls
echo ================================================================
echo OPTION 497 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres partage à proximité
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:crossdevice
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt498
cls
echo ================================================================
echo OPTION 498 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres presse-papiers
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:clipboard
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt499
cls
echo ================================================================
echo OPTION 499 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres bureau à distance
echo ================================================================
echo.
echo Execution en cours.
start ms-settings:remotedesktop
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:opt500
cls
echo ================================================================
echo OPTION 500 / 500
echo CATEGORIE : OUTILS & RAPPORTS
echo ACTION    : Ouvrir les paramètres système avancés
echo ================================================================
echo.
echo Execution en cours.
start sysdm.cpl
echo.
echo [TERMINE] L'option a ete executee. Un message Windows peut apparaitre
echo si la commande demande des droits administrateur.
echo.
pause
goto main

:quit
echo.
echo HUBBOOST ferme.
endlocal
exit /b 0

