actions
accept: text
	"Accept edited text. Compile it into a HelpTopic"

	| parent currentKey normalizedText colorsToRemove |
	((self currentParentTopic isNil or: [self currentParentTopic isEditable not])
		or: [self currentTopic isEditable not])
			ifTrue: [^ self inform: 'This help topic cannot be edited.' translated].
	
	"Remove default colors for the sake of UI themes."
	normalizedText := text.
	colorsToRemove := {Color black. Color white}.
	normalizedText runs: (normalizedText runs collect: [:attributes | attributes reject: [:attribute |
			(((attribute respondsTo: #color) and: [colorsToRemove includes: attribute color])
				or: [attribute respondsTo: #font])]]).

	parent := self currentParentTopic.
	currentKey := self currentTopic key.

	[isUpdating := true.
	(parent accept: normalizedText for: self currentTopic) == true
		ifFalse: [^ false].
	self changed: #clearUserEdits.
	parent refresh.
	parent == self rootTopic ifTrue: [self rootTopic: parent]]
		ensure: [isUpdating := false].
	
	self showTopicNamed: currentKey.
	^ true