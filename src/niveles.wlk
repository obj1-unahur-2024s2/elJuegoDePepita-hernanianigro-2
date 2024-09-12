import pepita.*
import comidas.*
import extras.*
import wollok.game.*
import randomizer.*

object tutorial1 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
		config.configurarGravedad()
	}
}

object tutorial2 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
		config.configurarGravedad()
	}
}

object tutorial3 {
	method iniciar() {
		game.addVisual(manzana)
		game.addVisual(alpiste)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		config.configurarTeclas()
		config.configurarColisiones()
		config.configurarGravedad()
	}
}

object config {
	method configurarTeclas() {
		keyboard.w().onPressDo({if (game.height()-1 > pepita.position().y()) pepita.irA(pepita.position().up(1))})
		keyboard.a().onPressDo({if (game.width()-10 < pepita.position().x()) pepita.irA(pepita.position().left(1))})
		keyboard.s().onPressDo({if (game.height()-10 < pepita.position().y()) pepita.irA(pepita.position().down(1))})
		keyboard.d().onPressDo({if (game.width()-1 > pepita.position().x()) pepita.irA(pepita.position().right(1))})
		//keyboard.a().onPressDo({if (game.width()-7 < silvestre.position().x()) silvestre.irA(silvestre.position().left(1))})
		//keyboard.d().onPressDo({if (game.width()-1 > silvestre.position().x()) silvestre.irA(silvestre.position().right(1))})
		keyboard.c().onPressDo({pepita.come(game.uniqueCollider(pepita))})
		}
	method configurarColisiones() {
		game.onCollideDo(pepita, { comida => pepita.come(comida)})
	}
	method configurarGravedad() {
		game.onTick(2000, "gravedad",{ => pepita.bajar()})
	}
	method iniciar(){
		self.configurarTeclas()
		self.configurarGravedad()
		self.configurarColisiones()
	}
}

