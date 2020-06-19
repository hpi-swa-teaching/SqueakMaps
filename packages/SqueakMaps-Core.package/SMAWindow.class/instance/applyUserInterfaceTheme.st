as yet unclassified
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	"The next line we need bcs of the strange bug, that the squeak maps window was always one userinterfacetheme behind the current user interface theme. Maybe we can find a better solution for this problem."
	self setWindowColor: self userInterfaceTheme color