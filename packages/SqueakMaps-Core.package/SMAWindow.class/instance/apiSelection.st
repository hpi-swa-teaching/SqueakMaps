build buttons and input fields
apiSelection
	
	| action |
	action := (UIManager default chooseFromLabeledValues: self apiCalls).
	action value.
	"self do: "
