package main

import (
	"fmt"
	"time"
)

var eoa bool = false
var eob bool = false

func a() {
	for a := 1; a <= 10; a++ {
		fmt.Println("a() --> ", a)
		time.Sleep(100 * time.Millisecond)
	}
	eoa = true
}

func b() {
	for b := 20; b <= 30; b++ {
		fmt.Println("b() --> ", b)
		time.Sleep(200 * time.Millisecond)
	}

	eob = true
}

func main() {
	go a()
	go b()

	for !eoa || !eob {
		fmt.Println("main() ---> tunggu a() dan b() selesai.")
		time.Sleep(300 * time.Millisecond)
	}
	fmt.Println("Selesai.")
}
