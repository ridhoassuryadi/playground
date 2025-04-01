package main

import "fmt"

// Alias struct
type Age = int

type person struct {
	name string
	age  Age
}

func main() {
	ridho := person{
		name: "Ridho",
		age:  21,
	}

	fmt.Println(ridho)
}
