converting
toStringLatLong
	
	| string |
	
	string := self lat abs asString.
	self lat > 0
		ifTrue: [string := string , ' °N, ']
		ifFalse: [string := string , ' °S, '].
		
	string := string, self long abs asString.
	self long > 0
		ifTrue: [string :=string , ' °E']
		ifFalse: [string := string , ' °W'].
	
	^ string
	