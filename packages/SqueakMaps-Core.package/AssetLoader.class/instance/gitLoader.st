accessing
gitLoader

	gitLoader isNil ifTrue: [
		gitLoader := self newGitLoader.
		gitLoader basePath: 'assets'].
	^ gitLoader