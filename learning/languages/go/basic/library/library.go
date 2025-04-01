package library

import "fmt"

type Student struct {
	Name  string
	Grade int
}

func (s Student) Hello() {
	fmt.Println("Hello ", s.Name)
}

func init() {
	fmt.Println("Init cuyy")
}
