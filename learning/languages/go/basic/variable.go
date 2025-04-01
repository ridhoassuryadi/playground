package main

import "fmt"

var count int = 10

func main() {
	var firstName string = "ridho"

	lastName := "assuryadi"

	_ = "archika"

	var footballTeamPlayer, basketballTeamPlayer int = 10, 13

	name := new(string)

	fmt.Println("Hello", firstName, lastName)

	fmt.Println(footballTeamPlayer, basketballTeamPlayer)

	fmt.Println(count)

	fmt.Println(*name)

}
