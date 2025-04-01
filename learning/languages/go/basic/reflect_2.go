package main

import (
	"fmt"
	"reflect"
)

type student struct {
	name  string
	grade int
}

func (s *student) getPropertyInfo() {
	var reflectValue = reflect.ValueOf(s)

	if reflectValue.Kind() == reflect.Ptr {
		reflectValue = reflectValue.Elem()
	}

	var reflectType = reflectValue.Type()

	for i := 0; i < reflectValue.NumField(); i++ {
		fmt.Println("Nama	:", reflectType.Field(i).Name)
		fmt.Println("Tipe Data	:", reflectType.Field(i).Type)
		fmt.Println("Interface : ", reflectValue.Field(i))
		fmt.Println("")
	}

}

func main() {
	var s1 = &student{"ridho", 21}

	s1.getPropertyInfo()
}
