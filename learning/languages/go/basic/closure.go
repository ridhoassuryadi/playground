package main

import "fmt"

func main() {
	var getMaxMain = func(arrNumbers []int) (max int, min int) {
		for i, num := range arrNumbers {
			switch {
			case i == 0:
				max, min = num, num

			case num > max:
				max = num
			case num < min:
				min = num
			}
		}

		return
	}

	fmt.Println(getMaxMain([]int{1, 2, 3, 4}))
}
