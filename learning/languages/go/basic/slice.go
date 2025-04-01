package main

import "fmt"

func main() {
	var foods = []string{"Nasi goreng", "Capcay", "Asam"}
	var coffe = []string{"Mocha"}
	var randSlice = make([]string, 3)
	var slice1 []string

	slice1 = append(slice1, "Uzumaki")

	srcSlice := []string{"A", "A", "B"}

	dstSlice := copy(randSlice, srcSlice)

	var coffes = append(coffe, "Espresso")

	for _, food := range foods {
		fmt.Println(food)
	}

	fmt.Println(foods[0:2])
	// fmt.Println(foods[4:4]) ini error
	fmt.Println(foods[2:])
	fmt.Println(foods[:3])

	fmt.Println(coffes)

	fmt.Println(dstSlice)

	fmt.Println(slice1)

}
