package main

import (
	"fmt"
	"strings"
)

type student struct {
	name  string
	grade int
}

func (s student) sayHello() {
	fmt.Println(s.name)
}

func (s student) getNameAt(i int) string {
	return strings.Split(s.name, " ")[i-1]
}

func main() {
	ridho := student{name: "Ridho Assuryadi", grade: 12}

	ridho.sayHello()

	fmt.Println(ridho.getNameAt(1))
}
