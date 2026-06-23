category testing
testRemoveCategory
	
	| testCategory menu item |
	
	testCategory := SMAPinCategory new.
	testCategory title: 'Test Category'.
	self model class addCategory: testCategory.
	
	"Select new category and open menu"
	self model isSelected: 2 put: true.
	menu := MenuMorph new.
	menu := self model getMenu: menu.
	
	item := menu items detect: [:m | m contents = 'Remove'].
	
	item target perform: item selector withArguments: item arguments.
		
	self deny: (self model class savedCategories anySatisfy: [:each | each title = 'Test Category'])
	
	