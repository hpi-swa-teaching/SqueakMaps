formatting
detailLinesOnDate: aDate

	| lines label |

	lines := OrderedCollection new.
	label := aDate = Date today
		ifTrue: ['Heute']
		ifFalse: ['Montag (nächster Werktag, da Wochenende)'].
	self hasMeals ifFalse: [
		lines add: 'Speiseplan' -> self emptyMessage.
		^ lines].
	lines add: 'Speiseplan' -> label.
	self meals do: [:meal |
		lines add: meal categoryLabel -> meal displayLine].
	^ lines
