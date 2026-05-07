building
isSelected: index

    selectionList ifNil: [
        selectionList := Array new: self items size withAll: false
    ].

    ^ selectionList at: index