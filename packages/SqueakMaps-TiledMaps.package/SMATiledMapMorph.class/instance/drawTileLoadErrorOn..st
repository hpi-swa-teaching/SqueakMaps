drawing
drawTileLoadErrorOn: aCanvas

	| message font textExtent position |

	message := 'Karte konnte nicht geladen werden'.
	font := TextStyle defaultFont.
	textExtent := (font widthOfString: message) @ font height.
	position := bounds center - (textExtent // 2).
	aCanvas fillRectangle: ((position extent: textExtent) expandBy: 4) fillStyle: (Color white alpha: 0.85).
	aCanvas drawString: message at: position font: font color: Color black
