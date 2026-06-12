helping
clampCenterToCoverage: aCenter
	"On the local zoom level, keep the visible area within the covered tiles. Elsewhere unchanged."

	| half allowed |

	self atLocalZoom ifFalse: [^ aCenter].
	half := (self bounds extent * self pixelSize) / 2.
	allowed := self coveredWorldBounds insetBy: half.
	^ ((aCenter x max: allowed left) min: allowed right)
		@ ((aCenter y max: allowed top) min: allowed bottom)
