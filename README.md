AgriDigital ASP.NET fork
===

This is our fork of the ASP.NET framework (original readme below). The only change is to the `ApiExplorer` class in `System.Web.Http`, which has been modified to allow for our dynamic versioning scheme.

To build a new version of the `Agridigital.System.Web.Http` package and publish it to Nuget, follow these steps:

1. Open the `Runtime` solution in Visual Studio.
2. Build the `System.Web.Http` project (in release, which should be default). This will compile a new version of `System.Web.Http.dll` and `System.Net.Http.Formatting.dll`.
3. Edit the Powershell script `publish-package.ps1` to include the correct version number and API key for Nuget (if you don't have it ask Cadel).
4. Run the Powershell script as an administrator. This will copy the new DLLs to the correct location, generate a nuspec file, mark the DLLs to avoid key verification, build the package, and upload it to Nuget.


ASP.NET MVC, Web API, Web Pages, and Razor
===

AppVeyor: [![AppVeyor](https://ci.appveyor.com/api/projects/status/github/aspnet/aspnetwebstack?branch=master&svg=true)](https://ci.appveyor.com/project/aspnetci/aspnetwebstack/branch/master)

## Note: This repo is for ASP.NET MVC 5.x, Web API 2.x, and Web Pages 3.x. For ASP.NET Core MVC, check the [MVC repo](https://github.com/aspnet/Mvc).

ASP.NET MVC is a web framework that gives you a powerful, patterns-based way to build dynamic websites and Web APIs. ASP.NET MVC enables a clean separation of concerns and gives you full control over markup.

This repo includes:

* ASP.NET MVC 5.x
* ASP.NET Web API 2.x
* ASP.NET Web Pages 3.x
* ASP.NET Razor 3.x

### Nightly builds

The latest built and tested packages from this repo are available on this MyGet feed: https://dotnet.myget.org/gallery/aspnetwebstack-dev

### Tags and releases

Git tag|Git branch|Other products|MVC package versions|Web API package (product) versions|Web Pages package versions
--------|--------------|------------|------------|------------|------------
[v2.0.4](https://github.com/aspnet/AspNetWebStack/tree/v2.0.4)|[v2.0-rtm](https://github.com/aspnet/AspNetWebStack/tree/v2.0-rtm)||4.0.40804|4.0.30506|2.0.30506
[v2.1](https://github.com/aspnet/AspNetWebStack/tree/v2.1)||ASP.NET and Web Tools 2012.2, VS 2012 Update 2 (not on http://nuget.org)|v4 2012.2 Update RTM|v1 2012.2 Update RTM|v2 2012.2 Update RTM
[v3.0.2](https://github.com/aspnet/AspNetWebStack/tree/v3.0.2)|[v3-rtm](https://github.com/aspnet/AspNetWebStack/tree/v3-rtm)||5.0.2|5.0.1 (2.0.1)|3.0.1
[v3.1.3](https://github.com/aspnet/AspNetWebStack/tree/v3.1.3)|[v3.1-rtm](https://github.com/aspnet/AspNetWebStack/tree/v3.1-rtm)||5.1.3|5.1.2 (2.1.2)|3.1.2
[v3.2.4](https://github.com/aspnet/AspNetWebStack/tree/v3.2.4)||In https://dotnet.myget.org/gallery/aspnetwebstack-dev feed; not on https://nuget.org yet|5.2.4|5.2.4 (2.2.4)|3.2.4
||[master](https://github.com/aspnet/AspNetWebStack/tree/master)|New work e.g. Web API 2.2.5-preview1|||
