Extension { #name : #'OrderedDictionary' }

{ #category : #'*neo-json-gemstone-core' }
OrderedDictionary >> neoJsonOn: neoJSONWriter [
	neoJSONWriter writeMap: self
]
