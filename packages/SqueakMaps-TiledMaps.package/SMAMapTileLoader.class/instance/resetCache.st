private
resetCache

	cache := LRUCache size: 10000 factory: [:key | self uncachedImageAtKey: key].