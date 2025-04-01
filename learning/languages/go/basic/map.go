package main

import "fmt"

var chicken map[string]int

func main() {
	chicken = map[string]int{} // ini harus diisi dulu karena bersifat zero value / nil

	singer := map[int]string{}

	ayams := []map[string]string{
		{"name": "ayam getok", "gender": "male"},
		{"name": "ayam geprek", "gender": "female"},
	}

	// ini juga
	dataSiswa := []map[string]string{
		map[string]string{"nama": "ridho"},
		map[string]string{"nama": "ade"},
	}

	scores := *new(map[string]int) // sorry by

	scores = map[string]int{}

	chicken["dinner"] = 4
	chicken["goreng"] = 2

	singer[2] = "Anly"

	singer[3] = "iri"

	// fmt.Println(chicken)

	fmt.Println(chicken["dinner"])

	fmt.Println(singer)

	fmt.Println(scores)

	delete(chicken, "dinner")

	var _, isDinnerExistOnChicken = chicken["dinner"]

	if !isDinnerExistOnChicken {
		fmt.Println("Dinner ngga ada")
	}

	for key, val := range chicken {
		fmt.Println(key, val)
	}

	for _, ayam := range ayams {
		fmt.Println(ayam["name"])
	}

	fmt.Printf("Data Siswa")

	ayams = append(ayams, map[string]string{"name": "ayam geprek", "gender": "female"})

	for _, siswa := range dataSiswa {
		fmt.Println(siswa["nama"])
	}
}
