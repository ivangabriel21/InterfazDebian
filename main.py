from os import system

system("curl -O https://raw.githubusercontent.com/ivangabriel21/DependeciaDX/main/gotty")
system("./gotty -w --port 8080 /bin/bash")
