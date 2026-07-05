accessing
campusDetailImagePathsFor: aCampusDetailTarget

	(aCampusDetailTarget respondsTo: #detailImagePaths) ifFalse: [^ #()].
	^ aCampusDetailTarget detailImagePaths reject: [:path |
		path isNil or: [path asString isEmpty]]
