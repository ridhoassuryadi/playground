package main

import (
	"fmt"
	"strings"
)

func calculate(numbers ...int) (res int) {
	for _, val := range numbers {
		res = res + val
	}

	return
}

func myHobbies(name string, hobies ...string) (desc string) {
	desc = name + strings.Join(hobies, ", ")

	return
}

func main() {
	fmt.Println(calculate(3, 2, 1, 3))
	fmt.Println(myHobbies("ridho", "makan", "tidur"))
}
