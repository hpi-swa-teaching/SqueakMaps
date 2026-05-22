class initialization
initialize
	"Initializes the receiver class"
 
	 TheWorldMenu registerOpenCommand: {'Help Browser'. {self. #open}}. 