A morph that draws a geo-referenced polygon overlay (building or room) on a tiled map.

Stores a list of `SMAPoint` geo-coordinates, a label, and separate fill and outline colors. It is created via the `forBuilding:` or `forRoom:` factory methods which apply the correct colors and styles. The morph exposes `containsOverlayPixel:` for hit-testing and `showsLabel` to toggle label rendering.

Observes a model object (an `SMABuilding` or `SMARoom`) for change notifications.