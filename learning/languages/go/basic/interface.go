package main

import (
	"fmt"
	"math"
)

type hitung interface {
	luas() float64
	keliling() float64
}

// Lingkaran
type lingkaran struct {
	diameter float64
}

func (l lingkaran) jariJari() float64 {
	return l.diameter / 2
}

func (l lingkaran) luas() float64 {
	return math.Pi * math.Pow(l.jariJari(), 2)
}

func (l lingkaran) keliling() float64 {
	return math.Pi * l.diameter
}

// Keliling
type persegi struct {
	sisi float64
}

func (p persegi) luas() float64 {
	return math.Pow(p.sisi, 2)
}

func (p persegi) keliling() float64 {
	return p.sisi * 2
}

func main() {

	var bangunDatar hitung

	bangunDatar = lingkaran{14}
	fmt.Println(bangunDatar.luas())

	bangunDatar = persegi{12}
	fmt.Println(bangunDatar.luas())

	// Mau akses method jari jari, maka hrus di casting terlebih dahulu
	var bangunDatar2 hitung = lingkaran{14}
	var bangunDatarLingkaran lingkaran = bangunDatar2.(lingkaran) // ini casting

	fmt.Println(bangunDatarLingkaran.jariJari())

}
