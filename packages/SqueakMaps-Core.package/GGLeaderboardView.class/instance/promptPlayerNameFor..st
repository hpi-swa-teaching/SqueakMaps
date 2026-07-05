recording
promptPlayerNameFor: aLabel

	| prompt name |
	prompt := aLabel
		ifNil: ['Name eingeben (optional):']
		ifNotNil: [:label | label, ' - Name eingeben (optional):'].
	name := UIManager default request: prompt.
	(name isNil or: [name isEmpty]) ifTrue: [^ nil].
	^ name size > self maxNameLength
		ifTrue: [name first: self maxNameLength]
		ifFalse: [name]