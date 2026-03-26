Extension { #name : #OrderedDictionary }

{ #category : #'*neo-json-core' }
OrderedDictionary >> neoJsonOn: neoJSONWriter [
	neoJSONWriter writeMap: self
]
