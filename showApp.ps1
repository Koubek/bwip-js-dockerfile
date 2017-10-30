$imageName = [IO.File]::ReadAllText(".\__imagename.txt") -replace '\/', '_'

$ip = docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $imageName

$hyperlink = "http://" + $ip + ":3030/?bcid=isbn&text=978-1-56581-231-4+52250&includetext&guardwhitespace"
Start-Process $hyperlink

$hyperlink = "http://" + $ip + "/demo.html"
Start-Process $hyperlink