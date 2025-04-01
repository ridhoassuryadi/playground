package main

import (
	"fmt"
	"runtime"
)

func main() {
	runtime.GOMAXPROCS(2)

	var messages = make(chan string)

	var sayHelloTo = func(who string) {
		var data = fmt.Sprintf("hello %s", who)
		messages <- data
	}

	go sayHelloTo("Ridho")
	go sayHelloTo("Archika")
	go sayHelloTo("Ridwan")

	var message1 = <-messages
	fmt.Println(message1)
	fmt.Println(messages)

	var message2 = <-messages
	fmt.Println(message2)
	fmt.Println(messages)

	var message3 = <-messages
	fmt.Println(message3)
	fmt.Println(messages)

}
