docker inspect --format "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} - {{.Name}} - {{.Config.Image}} " $(docker ps -q)
