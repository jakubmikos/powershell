Param(
    [string]$folderPath,
    [string]$extension
)

$dlls = Get-ChildItem $folderPath -Filter "*.$extension" -Recurse | Sort-Object DirectoryName | group DirectoryName -AsHashtable -AsString
foreach($dll in $dlls){
    $dll.Keys
}

