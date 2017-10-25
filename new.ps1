if((Get-ChildItem C:\test).length -gt 3)
{
    write-Host to exit press enter
    Read-Host
    Write-Host
}
