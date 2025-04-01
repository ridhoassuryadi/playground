package main

import "fmt"

type student struct {
	name string
	role string
	age  int
}

func main() {
	var ridho student

	weyza := student{name: "Weyza", role: "Vice Captain"}

	adi := &ridho

	ridho.name = "Ridho"
	ridho.role = "Captain"
	ridho.age = 21

	adi.name = "Adi"

	fmt.Println(ridho)
	fmt.Println(weyza)

}
