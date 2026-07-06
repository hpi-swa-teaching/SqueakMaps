areas
classesInPackageNamed: packageName
	| package |
	package := PackageOrganizer default
		packageNamed: packageName
		ifAbsent: [nil].
	^ package ifNil: [#()] ifNotNil: [package classes]
