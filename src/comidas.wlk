import pepita.*
import extras.*
import wollok.game.*
import randomizer.*

object manzana {
	method energiaQueOtorga() = 50
	var property position = randomizer2.position()
	var property image = "manzana.png"
}

object alpiste {
	method energiaQueOtorga() = 80
	var property position = randomizer2.position()
	var property image = "alpiste.png"
}
