if((Get-ChildItem C:\test).length -gt 3)
{
	get-ChildItem C:\test | sort LastWriteTime -Descending
    write-Host to exit press enter
    Read-Host
    Write-Host
}
