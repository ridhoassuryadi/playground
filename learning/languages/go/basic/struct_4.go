package main

import "fmt"

type person struct {
	name string
	age  int
}

func main() {

	students := []person{
		{name: "Ridho", age: 21},
	}

	for _, student := range students {
		fmt.Println(student)
	}
}
