as yet unclassified
handleErrorWithJson: aJsonObject
	
	| errorField message|
	errorField := aJsonObject at: 'error'.
	
	[message := errorField at: 'message']
		on:	Error 
		do: [message := errorField].
	Error signal: message.