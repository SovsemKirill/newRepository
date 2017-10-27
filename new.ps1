foreach($f1 in Get-ChildItem C:\testLoop | select FullName)
{
    $f1 = [string]$f1
    $f1 = $f1.TrimStart("@{FullName=")
    $f1 = $f1.TrimEnd("}")    
        foreach($f2 in Get-ChildItem $f1 | select FullName)
        {
            $f2 = [string]$f2
            $f2 = $f2.TrimStart("@{FullName=")
            $f2 = $f2.TrimEnd("}")
                if((Get-ChildItem $f2).length -gt 3)
                {
	               get-ChildItem $f2 | sort LastWriteTime -Descending | select-Object -last(((get-ChildItem $f2).length)-3)|Remove-item
                }
        }
}
write-Host to exit press enter
Read-Host
Write-Host