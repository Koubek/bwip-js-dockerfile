$imageName = Get-Content __imagename.txt
docker build -t $imageName .