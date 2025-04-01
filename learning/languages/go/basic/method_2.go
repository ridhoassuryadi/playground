package main

import (
	"fmt"
)

type student struct {
	name  string
	grade int
}

func (s student) changeName(name string) {
	fmt.Println("---> on changeName1, name changed to", name)
	s.name = name
}

func (s *student) changeNamePointer(name string) {
	fmt.Println("---> on changeName1, name changed to", name)
	s.name = name

}

func main() {
	ridho := student{"Ridho", 21}

	ridho.changeName("Ahya")

	fmt.Println(ridho.name)

	ridho.changeNamePointer("ethan")

	fmt.Println(ridho.name)
}
