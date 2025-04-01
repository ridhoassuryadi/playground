package main

import "fmt"

func main() {
	// Volaaaa anoymous struct
	var student = struct {
		name  string
		grade int
	}{}

	// With Default Properties not problemo
	weyza := struct {
		name  string
		grade int
	}{
		name:  "Weyza",
		grade: 12,
	}

	student.name = "Ridho"
	student.grade = 9

	fmt.Println(student)

	fmt.Println(weyza)
}
