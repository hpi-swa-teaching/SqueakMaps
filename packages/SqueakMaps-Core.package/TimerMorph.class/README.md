A TimerMorph is the countdown clock for a GeoGuessr round. It shows the remaining time as mm:ss in a label, counts down once per second while running, and tints the lavel from calm warning to critical as time runs low. On reaching zero it stops and evaluates the block registered via onTimeout: (the window uses this to submit the guess automatically).
Typical use: register a callback with onTimeout:, then reset and start; stop halts the countdown.

