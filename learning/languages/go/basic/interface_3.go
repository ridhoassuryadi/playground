package main

import "fmt"

func main() {
	var secret interface{}

	secret = "uhuy"
	fmt.Println("Data 1 :", secret)

	secret = []string{"Apel", "Mangga"}
	fmt.Println("Data 2", secret)

	var data interface{}

	data = map[string]interface{}{
		"name":      "ridho",
		"grade":     12,
		"breakfast": []string{"Nasi goreng", "Teh anget"},
	}
	fmt.Println(data)

}
