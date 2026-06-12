helping
coveredWorldBounds
	"World-coordinate rectangle covered by the local zoom-20 tiles in assets/tiles/20
	(scaled tile x 562507..562552, y 344478..344500)."

	| scale |

	scale := 1 bitShift: 20.
	^ ((562507 / scale) @ (344478 / scale)) corner: ((562553 / scale) @ (344501 / scale))
