package main

import (
	"bufio"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		bytes := scanner.Bytes()
		if len(bytes) > 4 {
			bytes = bytes[4:]
			os.WriteFile("settings.json", bytes, 0666)
		}
	}
}
