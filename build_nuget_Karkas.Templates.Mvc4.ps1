$projectName = "Karkas.Templates.Mvc4"
$version = Get-Content "$projectName.version.txt"
write-host "version: " + $version
$nugetCacheFolder = "$Home/AppData/Local/NuGet/Cache"
$nugetPackageName = "$projectName.$version.nupkg"
#mkdir tools
#mkdir content
./bin/NuGet.CommandLine.2.5.0/tools/NuGet pack  $projectName/$projectName.nuspec -Version $version
move $nugetPackageName  $nugetCacheFolder -Force
write-host "moved $nugetPackageName to $nugetCacheFolder "
