building
getPinLabel
	
	Transcript show: self selectedPin label; cr.
	^ { StringMorph new contents: self selectedPin fullLabel; yourself } 