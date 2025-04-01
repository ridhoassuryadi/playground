package main

import (
	"fmt"

	"github.com/learn-golang/basic/library"
)

func main() {
	var ridho = library.Student{"Ridho", 12}

	fmt.Println(ridho)

	ridho.Hello()
	// library.hello()
}
