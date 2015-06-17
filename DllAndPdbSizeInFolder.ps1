$dlls = Get-ChildItem C:\Applications\Broadcast\Sky\Broadcast\WIP -Filter "*.dll" -Recurse
$pdbs = Get-ChildItem C:\Applications\Broadcast\Sky\Broadcast\WIP -Filter "*.pdb" -Recurse
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
