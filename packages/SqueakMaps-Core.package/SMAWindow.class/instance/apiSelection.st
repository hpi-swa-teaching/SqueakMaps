build buttons and input fields
apiSelection
	
	| action |
	action := (UIManager default chooseFromLabeledValues: self apiCalls title: 'choose mapmode').
	action value.
	"self do: "
