pin management
savePin
	| categories selectedCategory |

	categories := #('Freizeit' 'Arbeit' 'Essen').

	selectedCategory := UIManager default
		chooseFrom: categories
		title: 'Kategorie auswählen'.

	"Abbrechen gedrückt"
	selectedCategory = 0 ifTrue: [ ^ self ].

	self selectedPin
		category: (categories at: selectedCategory).

	self isSelectedPinSaved ifFalse: [
		self class savedPins addIfNotPresent: self selectedPin
	].

	self changed: #buildSearchPinPanelChildren