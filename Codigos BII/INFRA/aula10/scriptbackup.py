from datetime import datetime
from pathlib import Path
import zipfile


OBJECT_TO_BACKUP = 'D:\CTD\BIMESTRE2\INFRA\aula10\backup'
BACKUP_DIRECTORY = 'D:\CTD\BIMESTRE2\INFRA\aula10\teste'
MAX_BACKUP_AMOUNT = 5  

object_to_backup_path = Path(OBJECT_TO_BACKUP)
backup_directory_path = Path(BACKUP_DIRECTORY)
assert object_to_backup_path.exists()  # Validate the object we are about to backup exists before we continue

# Validate the backup directory exists and create if required
backup_directory_path.mkdir(parents=True, exist_ok=True)

# Get the amount of past backup zips in the backup directory already
existing_backups = [
    x for x in backup_directory_path.iterdir()
    if x.is_file() and x.suffix == '.zip' and x.name.startswith('backup-')
]

# Enforce max backups and delete oldest if there will be too many after the new backup
oldest_to_newest_backup_by_name = list(sorted(existing_backups, key=lambda f: f.name))
