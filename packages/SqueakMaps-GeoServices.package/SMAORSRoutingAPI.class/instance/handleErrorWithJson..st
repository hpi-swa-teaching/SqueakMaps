error handling
handleErrorWithJson: aJsonObject
	
	| code message |
	
	code := ((aJsonObject at: 'error') at: 'code') asNumber.
	message := (aJsonObject at: 'error') at: 'message'.
	"Internal Error Codes of the API"
	code = 2004 ifTrue: [SMARouteTooLongError signal: message].
	code = 2010 ifTrue: [SMAUnreachableDestinationError signal: message].
	
	Error signal: message