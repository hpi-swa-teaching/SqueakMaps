converting
toStringLongLat
	
	| string |
	
	string := self long asString.
	self long > 0
		ifTrue: [string :=string , ' °E, ']
		ifFalse: [string := string , ' °W, '].
	
	string := string , self lat asString.
	self lat > 0
		ifTrue: [string := string , ' °N']
		ifFalse: [string := string , ' °S'].
	
	^ string
	