formatting
categoryLabel

	self category ifNil: [^ 'Gericht'].
	self category isEmpty ifTrue: [^ 'Gericht'].
	self category size > 18 ifTrue: [^ 'Gericht'].
	^ self category
