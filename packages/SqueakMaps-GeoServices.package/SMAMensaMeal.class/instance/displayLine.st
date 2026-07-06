formatting
displayLine

	| text |

	text := self name.
	self priceSummary ifNotEmpty: [:summary |
		text := text , ' - ' , summary].
	self hasNotes ifTrue: [
		text := text , ' - ' , self notesText].
	^ text
