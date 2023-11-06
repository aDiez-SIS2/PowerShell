$carp = Read-Host "Introduce la ruta absoluta del directorio a copiar"

if (Test-Path -Path $carp){
    $dest = Read-Host "Introduce la ruta absoluta del directorio donde se guardara la copia"
    if (Test-Path -Path $dest){
        Copy-Item -Path $carp -Destination $dest -Recurse
        Write-Host "Copia completada"
    }else{
        Write-Host "El directorio de destino no se encuentra"
    }
}else{
    Write-Host "El directorio a copiar no se encuentra"
}