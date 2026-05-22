enumerating
detect: block ifFound: foundBlock

	self do: [:topic :path | (block value: topic)
		ifTrue: [foundBlock cull: topic cull: path. ^ topic]].