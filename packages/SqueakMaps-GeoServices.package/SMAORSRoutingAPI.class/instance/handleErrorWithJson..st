error handling
handleErrorWithJson: aJsonObject
	
	| errorField message|
	
	errorField := aJsonObject at: 'error'.
	
	"Sometimes the error message is contained in the error field itself,
	but other times there is a separate message field inside the error field."
	[message := errorField at: 'message']
		on:	Error 
		do: [message := errorField].
		
	(message includesSubstring: 'route distance must not be greater than') ifTrue: [
		SMARouteTooLongError signal: message].
	(message includesSubstring: 'Could not find routable point') ifTrue: [
		SMAUnreachableDestinationError signal: message].
	Error signal: message