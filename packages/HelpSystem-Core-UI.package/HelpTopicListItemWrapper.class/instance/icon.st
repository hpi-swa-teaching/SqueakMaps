accessing
icon
	"Either return the icon for the given topic"
	
	| symbol |
	self item icon ifNotNil: [:icon | ^ icon].
	symbol := self item isBook 
					 ifTrue: [#bookIcon] 
			  		 ifFalse: [#pageIcon].
	^HelpIcons iconNamed: symbol