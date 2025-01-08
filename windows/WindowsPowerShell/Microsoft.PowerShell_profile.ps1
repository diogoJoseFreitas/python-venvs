function venv {
    param (
        [string]$venv
    )

    # Caminho para o script de ativação
    $folder = "C:\Users\tecdisa\Documents\git-repositories\.python\venvs"
    $envPath = "$folder\$venv\Scripts\Activate.ps1"
    
    # Verificar se o script de ativação existe antes de tentar ativá-lo
    if (Test-Path $envPath) {
        Write-Host "Activating virtual environment $venv..."
        & $envPath
    } else {
        Write-Host "Virtual environment '$venv' not found."
        Write-Host "Please try venv-list for options"
    }
}

function venv-list {
    $folder = "C:\Users\tecdisa\Documents\git-repositories\.python\venvs"
    Get-ChildItem -Path "$folder" -Directory | Select-Object -ExpandProperty Name
}



New-Alias py python

New-Alias disable deactivate
