package main

import (
	"fmt"
	"runtime"
)

func getAverage(numbers []int, ch chan float64) {
	var sum = 0
	for _, e := range numbers {
		sum += e
	}

	ch <- float64(sum) / float64(len(numbers))
}

func getMax(numbers []int, ch chan int) {
	var max = numbers[0]

	for _, e := range numbers {
		if max < e {
			max = e
		}
	}

	ch <- max
}

func main() {
	runtime.GOMAXPROCS(2)

	numbers := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

	var ch1 = make(chan float64)
	go getAverage(numbers, ch1)

	var ch2 = make(chan int)
	go getMax(numbers, ch2)

	for i := 0; i < 2; i++ {
		select {
		case avg := <-ch1:
			fmt.Printf("Average \t %.2f \n", avg)
		case max := <-ch2:
			fmt.Printf("Maximum numbers \t %d \n", max)
		}
	}
}
