category management
addCategory

	| category answer | 
	answer := UIManager default request: 'Category Title'.
	(answer = '') ifFalse: [ 
			category := SMAPinCategory new.
			category title: answer.
			self class addCategory: category.
			self changed: #items.]