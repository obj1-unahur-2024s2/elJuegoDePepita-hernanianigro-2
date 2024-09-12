import pepita.*
import comidas.*
import wollok.game.*
import randomizer.*

object nido {
	method energiaQueOtorga() = 0
	var property image = "nido.png"
	method position() = game.at(8,8)
}

object silvestre {
	var property energia = 100
	method energiaQueOtorga() = 0
	method position() = game.at(pepita.position().x().max(3), 0)
	var property image = "silvestre.png"
	method vola(kms) {energia = energia - 0}
}
