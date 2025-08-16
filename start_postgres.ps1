# Nom du service à surveiller
$serviceNom = "postgresql-x64-17"

# Vérifier si le service existe
if (Get-Service -Name $serviceNom -ErrorAction SilentlyContinue) {
    # Vérifier l'état actuel du service
    $service = Get-Service -Name $serviceNom

    if ($service.Status -eq "Stopped") {
        # Démarrer le service s'il est arrêté
        Start-Service -Name $serviceNom
        Write-Host "Le service $serviceNom a ete demarre avec succes."
    } elseif ($service.Status -eq "Running") {
        # Arrêter le service s'il est démarré
        Stop-Service -Name $serviceNom
        Write-Host "Le service $serviceNom a ete arrete avec succes."
    } else {
        Write-Host "L'etat du service $serviceNom est inconnu."
    }
} else {
    Write-Host "Le service $serviceNom n existe pas."
}

# Ajouter une pause pour maintenir la fenêtre ouverte
Read-Host "Appuyez sur Entree pour quitter..."