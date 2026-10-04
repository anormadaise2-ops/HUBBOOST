import os
import sys
import threading
import webbrowser
from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler
from pathlib import Path


HOST = "127.0.0.1"
PORT = 8765


def get_app_dir():
    """
    Retourne le dossier contenant les fichiers de l'application.

    En mode normal :
        dossier du boost.py

    En EXE PyInstaller :
        dossier temporaire _MEIPASS
    """
    if getattr(sys, "frozen", False):
        return Path(sys._MEIPASS)

    return Path(__file__).resolve().parent


APP_DIR = get_app_dir()


class HUBBOOSTHandler(SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(
            *args,
            directory=str(APP_DIR),
            **kwargs,
        )

    def log_message(self, format, *args):
        # Pas de console inutile
        pass


def start_server():
    server = ThreadingHTTPServer(
        (HOST, PORT),
        HUBBOOSTHandler,
    )

    server.serve_forever()


def main():
    index_file = APP_DIR / "index.html"

    if not index_file.exists():
        print("ERREUR : index.html introuvable.")
        print(f"Dossier recherche : {APP_DIR}")
        return

    server_thread = threading.Thread(
        target=start_server,
        daemon=True,
    )

    server_thread.start()

    url = f"http://{HOST}:{PORT}/"

    # Laisse le serveur démarrer avant d'ouvrir le navigateur.
    threading.Timer(
        0.8,
        lambda: webbrowser.open(url),
    ).start()

    # Garde l'EXE ouvert.
    try:
        server_thread.join()
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()