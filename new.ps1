if((Get-ChildItem C:\test).length -gt 3)
{
	$count = (get-ChildItem C:\test).length
	get-ChildItem C:\test | sort LastWriteTime -Descending | select-Object -last(&count-3)|Remove-item
    write-Host to exit press enter
    Read-Host
    Write-Host
}
