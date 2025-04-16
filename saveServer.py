# Old script to create backups

import shutil
import os
from datetime import datetime
from time import sleep as waitSeconds

def save(worldName : str):
    try:
        if not os.path.isdir('backups'):
            os.makedirs('backups')

        worldPath = fr"world-{worldName}"

        if not os.path.isdir(worldPath):
            shutil.copytree(fr'world/', fr'backups/{worldPath}', dirs_exist_ok=True, ignore_dangling_symlinks=True)
            print(fr"Saved world to {worldPath}")
    except:
        print("Couldn't save world... trying again")
        waitSeconds(5)
        save(worldName)

while True:
    save(datetime.today().strftime('%Y-%m-%d-%H-%M-%S'))
    waitSeconds(15)