initialization
applyFrame: aFrame to: aMorph
    | b |

    b := self currentWorld extent.

    aMorph position: b origin + (aFrame origin * b extent).
    aMorph extent: aFrame extent * b extent.