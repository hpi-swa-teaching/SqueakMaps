guessing
mapClicked: anEvent

    Transcript show: 'window click'; cr.
    (mapIsLarge not
        and: [tiledMapMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self swapViews].

    (mapIsLarge
        and: [pictureMorph bounds containsPoint: anEvent position])
            ifTrue: [^ self swapViews].

    self placeGuessAt: anEvent