building
buildSidebarTopChildren

	| children |

	children := self model currentView = #directions
		ifTrue: [self buildSidebarDirectionsChildren: self builder]
		ifFalse: [self buildSidebarSearchChildren: self builder].

	^ children collect: [:spec | self builder build: spec]