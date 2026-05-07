building
addCategory

	| category | 
	category := SMAPinCategory new.
	category title:  (UIManager default request: 'Category Title').
	
	self class addCategory: category
