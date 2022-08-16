Extension { #name : 'AbstractDictionary' }

{ #category : '*Neo-JSON-GemStone36-' }
AbstractDictionary >> neoJsonOn: neoJSONWriter [
	neoJSONWriter writeMap: self
]
