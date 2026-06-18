# create-working-folders.ps1
# Creates a basic folder structure for organizing operational work.

$folders = @(
    "input",
    "output",
    "logs",
    "documentation"
)

foreach ($folder in $folders) {
    if (-Not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
        Write-Host "Created folder: $folder"
    } else {
        Write-Host "Folder already exists: $folder"
    }
}

Write-Host "Folder structure ready."
