building
buildSidebarSearchChildren: aBuilder

	| children |
	children := OrderedCollection new.
	"self shouldShowTextPane ifTrue:
		[children add: (self buildTextPaneWith: aBuilder)]."
	^ children