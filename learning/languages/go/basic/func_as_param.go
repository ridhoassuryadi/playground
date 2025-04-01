package main

import (
	"fmt"
	"strings"
)

/*
BEFORE

func filter(data []string, callback func(string) bool) (result []string) {
	for _, each := range data {
		if filtered := callback(each); filtered {
			result = append(result, each)
		}
	}

	return
}

*/

// AFTER
type filterCallback func(string) bool

func filter(data []string, callback filterCallback) (result []string) {
	for _, each := range data {
		if filtered := callback(each); filtered {
			result = append(result, each)
		}
	}

	return
}

func main() {
	var names = []string{"Wilsone", "Ridho", "Adi", "Aldo"}

	namesContainA := filter(names, func(name string) bool {
		return strings.Contains(name, "A")
	})

	dataLength5 := filter(names, func(name string) bool {
		return len(name) == 5
	})

	fmt.Println("Nama yang mengandung A", namesContainA)

	fmt.Println("Nama yang berukur 5", dataLength5)

}
