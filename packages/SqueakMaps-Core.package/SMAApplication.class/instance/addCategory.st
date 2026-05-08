building
addCategory

	| category answer | 
	answer := UIManager default request: 'Category Title'.
	Transcript show: 'Davor: ', self items, ' SelectionList: ', selectionList.
	(answer = '') ifFalse: [ 
			category := SMAPinCategory new.
			category title: answer.
			self class addCategory: category.
			self changed: #items.
			Transcript show: ' Danach: ', self items, ' SelectionList: ', selectionList.
		]
