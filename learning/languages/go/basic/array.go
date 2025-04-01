package main

import "fmt"

func main() {
	// One Dimensional
	var buah [5]string

	buah = [5]string{"aldo", "aha", "wadidaw", "yuhhuu", "teee"}

	var frontends = [8]string{"ridho", "yoka", "hanif", "juang", "jilly", "kresna", "fakrussy", "rizal"}

	// Multi Dimensional
	var numbers = [2][3]int{{1, 3, 5}, {4, 5, 7}}

	fmt.Println(numbers)

	fmt.Println("BUAH")
	for i := 0; i < len(buah); i++ {
		fmt.Println(buah[i])
	}

	fmt.Println("FRONTEND")
	for _, frontend := range frontends {
		fmt.Println(frontend)
	}
}
