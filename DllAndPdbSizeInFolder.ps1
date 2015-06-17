Param(
    [string]$folderPath
)
$dlls = Get-ChildItem $folderPath -Filter "*.dll" -Recurse
$pdbs = Get-ChildItem $folderPath -Filter "*.pdb" -Recurse
$sizeSum = 0
foreach($dll in $dlls){
    $sizeSum += $dll.Length/1MB
    #Write-Host $dll.FullName $dll.Length/1MB
}
foreach($pdb in $pdbs){
    $sizeSum += $pdb.Length/1MB
    #Write-Host $dll.FullName $dll.Length/1MB
}
Write-Host $sizeSum
