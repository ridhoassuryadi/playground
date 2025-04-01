package main

import "fmt"

func main() {
	var p1 = struct {
		name string
		age  int
	}{name: "Ridho", age: 21}

	fmt.Println(p1)
}
