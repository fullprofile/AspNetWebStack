$version = "5.2.4.4"
$apikey = "incorrect"

New-Item -Path ".\nuget-package\lib" -ItemType directory -Force
Copy-Item ".\bin\Release\System.Net.Http.Formatting.dll" -Destination ".\nuget-package\lib"
Copy-Item ".\bin\Release\System.Web.Http.dll" -Destination ".\nuget-package\lib"

Set-Location -Path ".\nuget-package"

(Get-Content ".\Agridigital.System.Web.Http.nuspec.template").Replace('[VERSION]', $version) | Set-Content ".\Agridigital.System.Web.Http.nuspec"

Set-Location -Path ".\lib"
& 'C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools\sn.exe' '-Vr' 'System.Web.Http.dll'
& 'C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.6.1 Tools\sn.exe' '-Vr' 'System.Net.Http.Formatting.dll'

Set-Location -Path "..\"

& .\NuGet.exe 'pack' 'Agridigital.System.Web.Http.nuspec'
& .\NuGet.exe 'push' ('Agridigital.System.Web.Http.{0}.nupkg' -f $version) $apikey '-Source' 'https://nuget.agridigital.io/api/v2/package'

Set-Location -Path "..\"