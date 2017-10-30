$dockerProfile = Get-Childitem __profile.txt
$imageName = Get-Childitem __imagename.txt
$containerName = $imageName

$containerId = docker run -d --name $containerName $account/$dockerProfile
. .\showApp.ps1