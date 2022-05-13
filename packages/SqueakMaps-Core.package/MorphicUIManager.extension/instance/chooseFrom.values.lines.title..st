*SqueakMaps-Core-Override
chooseFrom: labelList values: valueList lines: linesArray title: aString 
	"Choose an item from the given list. Answer the selected item."
	
	| index |
	self
		askForProvidedAnswerTo: aString
		ifSupplied:
			[:answer | 
			(answer = #cancel or: [answer isNil]) ifTrue: [^ nil].
			^ valueList at: (labelList indexOf: answer) ifAbsent:
					[answer isNumber 
						ifTrue: [valueList at: answer ifAbsent: [nil]]
						ifFalse: [nil]]].
	
	index := self chooseFrom: labelList lines: linesArray title: aString.
	^ index = 0
		ifTrue: [ nil ]
		ifFalse: [ valueList at: index ]