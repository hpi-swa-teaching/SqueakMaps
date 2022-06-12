building
getPinInformationLabel

	| selectedPinInformation |
	"Transcript show: selectedPin."
	(selectedPin) 
		ifNil:[selectedPinInformation:=''];
		ifNotNil:[selectedPinInformation:= selectedPin label].
	
	

	"^ { StringMorph new contents: selectedPinInformation yourself }"
	
	^ selectedPinInformation asString