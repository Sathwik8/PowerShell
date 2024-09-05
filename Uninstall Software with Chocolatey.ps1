if($InstallChocolatey)
{
  if(-not (Test-Path 'C:\ProgramData\chocolatey\lib\OctopusTools\tools\octo.exe'))
   {
     Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   }
}


choco uninstall $ChocolateyPackageId -y
