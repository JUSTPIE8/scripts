# !/bin/bash

enter(){
fd .  |entr -r  go run main.go
}
enter $1
