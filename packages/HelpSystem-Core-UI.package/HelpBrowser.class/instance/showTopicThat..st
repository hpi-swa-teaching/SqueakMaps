actions
showTopicThat: block

	self
		detect: [:topic | block value: topic]
		ifFound: [:topic :path | self currentTopicPath: path, {topic}].