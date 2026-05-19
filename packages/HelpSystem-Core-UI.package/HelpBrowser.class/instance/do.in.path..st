enumerating
do: block in: topics path: path

	topics do: [:topic |
		block cull: topic cull: path.
	
		topic hasSubtopics ifTrue: [
			self do: block in: topic subtopics path: path, {topic}]].