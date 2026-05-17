pages
githubPage
	| url contents |
	url := 'https://raw.githubusercontent.com/hpi-swa-teaching/SqueakMaps/swt26-g05/submain/User_Guide_SqueakMaps.md'.
	contents := HTTPClient httpGet: url.
	^ HelpTopic
		title: 'github User Guide Squeak Maps .md'
		icon: (HelpIcons iconNamed: #bookIcon)
		contents: (WebClient httpGet: url) content.