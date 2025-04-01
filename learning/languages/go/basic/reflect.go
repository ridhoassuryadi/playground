package main

import (
	"fmt"
	"reflect"
)

func main() {
	number := 23
	reflectValue := reflect.ValueOf(number)

	fmt.Println("reflect value variable :", reflectValue)
	fmt.Println("tipe variable 			: ", reflectValue.Type())
	fmt.Println("interface				: ", reflectValue.Interface())

	if reflectValue.Kind() == reflect.Int {
		fmt.Println("Oh interger guys")
	}
}
