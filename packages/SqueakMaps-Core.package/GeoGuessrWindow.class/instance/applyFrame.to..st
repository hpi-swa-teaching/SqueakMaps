initialization
applyFrame: aFrame to: aMorph
    | b |

    b := gameContainer bounds.

    aMorph position: b origin + (aFrame origin * b extent).
    aMorph extent: aFrame extent * b extent.