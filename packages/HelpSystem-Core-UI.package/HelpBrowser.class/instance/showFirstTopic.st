actions
showFirstTopic
	"Shows the first topic that has contents."
	
	self showTopicThat: [:topic | topic contents notEmpty].