A SMAMapTileSourceCombination provides functionality for retrieving map tiles using one of two tile sources.

The two tile sources are fixed to OpenStreetMapTileSource and LocalTileSource, which is rendered using OpenStreetMap data.
It works for other combinations, as long as the tileSourceB supports higher zoom levels than tileSourceA.