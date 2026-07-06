guessing
mapClicked: anEvent

    (self viewSwapper isMapLarge not
        and: [self tiledMapMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self viewSwapper toggle].

    (self viewSwapper isMapLarge
        and: [self pictureMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self viewSwapper toggle].

    self placeGuessAt: anEvent position