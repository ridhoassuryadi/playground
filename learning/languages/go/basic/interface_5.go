package main

import "fmt"

type person struct {
	name string
	age  int
}

func main() {
	var profile interface{} = &person{"ridho", 12}

	profile.(*person).name = "ajay"

	fmt.Println(profile)
}
