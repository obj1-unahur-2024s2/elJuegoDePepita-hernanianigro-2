import comidas.*
import extras.*
import wollok.game.*
import randomizer.*

object pepita {

	var property energia = 100
	var property position = game.origin()
	method image() {return if (self.estaEnElNido()) "pepita-grande.png" else if (self.atrapadaPorSilvestre()) "pepita-gris.png" 
		else if (self.estaCansada()) "pepita-gris.png" else "pepita.png"}
	method come(comida) {energia = 200.min(energia + comida.energiaQueOtorga())}
	method vola(kms) {energia = 0.max(energia - kms * 9)}
	method irA(nuevaPosicion) {
		if (not self.estaCansada()){
			self.vola(position.distance(nuevaPosicion))
			position = nuevaPosicion
			game.say(self, "Me quedan " + 0.max(self.energia()) + " puntos de energia")
		}
		else if (self.estaEnElNido()) {
			game.stop()
			game.say(self, "STAGE CLEAR!")
		}
		else if (self.atrapadaPorSilvestre()) {
			game.stop()
			game.say(self, "GAME OVER")
		}
		else{
			game.stop()
			game.say(self, "GAME OVER")
		}
	}
	method estaCansada() {return energia <= 0}
	method estaEnElNido() {return position == nido.position()}
	method atrapadaPorSilvestre() {return position == silvestre.position()}
	method bajar(){position = game.at(position.x(), 0.max(position.y() - 1))}
}

