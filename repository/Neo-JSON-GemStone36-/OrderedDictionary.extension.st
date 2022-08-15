Extension { #name : 'OrderedDictionary' }

{ #category : '*Neo-JSON-GemStone36-' }
OrderedDictionary >> neoJsonOn: neoJSONWriter [
	neoJSONWriter writeMap: self
]
