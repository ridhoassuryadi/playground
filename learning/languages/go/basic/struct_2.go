package main

import "fmt"

type person struct {
	name string
	age  int
}

type student struct {
	age   int
	study string
	orang person
}

func main() {
	ridho := student{study: "AHOY"}
	ridho.age = 21
	ridho.orang.name = "Ridho"
	ridho.orang.age = 21

	// wayzaPerson := person{name: "Weyza", age: 15}
	wayza := student{orang: person{name: "Weyza", age: 15}, study: "IPA", age: 13}

	fmt.Println(ridho)
	fmt.Println(wayza)
}
