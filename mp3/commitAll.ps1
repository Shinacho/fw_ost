$targetDir = "D:\Project\fw_ost\mp3"

Get-ChildItem -Path $targetDir -Filter *.mp3 | ForEach-Object {
    $filePath = $_.FullName
    git add $filePath

    git commit -m "update file: $($_.Name)"

    git push
}