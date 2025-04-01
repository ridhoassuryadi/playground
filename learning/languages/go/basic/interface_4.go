package main

import "fmt"

func main() {
	var secret interface{}

	/*
		secret = 2

		secret = secret * 2

		ini bikin error karena mismatch antara type interface dengan int
	*/

	secret = 2
	secret = secret.(int) * 10

	fmt.Println(secret)
}
