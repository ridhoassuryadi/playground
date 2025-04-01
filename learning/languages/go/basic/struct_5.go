package main

import "fmt"

// persion is anonymous struct
type member struct {
	person struct {
		name string
		age  int
	}

	studies []string
}

func main() {
	var student struct {
		name  string
		grade int
	}

	student.name = "Ridho"
	fmt.Println(student)

	fahri := member{}

	fahri.person.name = "Fahri"
	fahri.person.age = 21

	fmt.Println(fahri)
}
