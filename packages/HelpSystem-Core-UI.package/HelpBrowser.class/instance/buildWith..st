toolbuilder
buildWith: builder

	| windowSpec |
	windowSpec := self buildWindowWith: builder.
	
	windowSpec children
		add: (self buildSearchWith: builder);
		add: (self buildTreeWith: builder);
		add: ( (rootTopic notNil and:[
			rootTopic usesCodeStylingForPages])
				ifTrue:[self buildCodeContentsWith: builder]
				ifFalse:[self buildContentsWith: builder]).

	^ builder build: windowSpec