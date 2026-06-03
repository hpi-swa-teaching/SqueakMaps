building
buildOverlayChildren

	| builder children |

	builder := ToolBuilder default.
	children := self currentScreen = #playing
		ifTrue: [self buildPlayingScreenChildren: builder]
		ifFalse: [self buildStartScreenChildren: builder].
	^ children collect: [:spec | builder build: spec]
