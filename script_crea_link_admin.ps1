# Chemin vers le script PowerShell
$cheminScript = "C:\Users\maxen\Documents\GitHub\script_start_serv_sql\start_mysql.ps1"

# Chemin vers le raccourci à créer
$cheminRaccourci = "C:\Users\maxen\Documents\GitHub\script_start_serv_sql\start_mysql.lnk"

# Créer un objet WScript.Shell
$shell = New-Object -ComObject WScript.Shell

# Créer le raccourci
$raccourci = $shell.CreateShortcut($cheminRaccourci)

# Spécifier le chemin vers PowerShell.exe
$raccourci.TargetPath = "powershell.exe"

# Spécifier les arguments pour exécuter le script en tant qu'administrateur
$raccourci.Arguments = "-NoProfile -ExecutionPolicy Bypass -File ""$cheminScript"""

# Activer l'exécution en tant qu'administrateur
$raccourci.Save()
