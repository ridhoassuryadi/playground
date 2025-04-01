package main

import (
	"fmt"
)

func changeName(original *string, value string) {
	*original = value
}

func main() {
	var numberA int = 4
	var numberC int = numberA
	var numberB *int = &numberA

	name := "Ridho"

	fmt.Println("Number A (value) ", numberA)
	fmt.Println("Number A (address) ", &numberA)

	fmt.Println("Number B (value) ", *numberB)
	fmt.Println("Number B (address) ", &numberB)

	fmt.Println("Number C (value) ", numberC)
	fmt.Println("Number C (address) ", &numberC)

	numberA = 5

	fmt.Println("Number A (value) ", numberA)
	fmt.Println("Number A (address) ", &numberA)

	fmt.Println("Number B (value) ", *numberB)
	fmt.Println("Number B (address) ", numberB)

	fmt.Println("Number C (value) ", numberC)
	fmt.Println("Number C (address) ", &numberC) // still same :))

	changeName(&name, "Weyza")

	fmt.Println(name)

}
