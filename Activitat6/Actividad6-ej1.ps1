$Ruta = "C:\Users"
$NombreArchivo = Read-Host "Introduce el nombre del archivo o directorio"

$Resultado = Get-ChildItem -Path $Ruta -Recurse | Where-Object { $_.Name -eq $NombreArchivo}

if ($Resultado) {
    Write-Host "El archivo o directorio '$NombreArchivo' se encontró en la ruta '$Ruta'."
} else {
    Write-Host "El archivo o directorio '$NombreArchivo' no se encontró en la ruta '$Ruta'."
}