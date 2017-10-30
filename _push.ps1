$imageName = Get-Content __imagename.txt
$dockerProfile = Get-Content __profile.txt

docker tag $imageName $dockerProfile/$imageName
docker push $dockerProfile/$imageName