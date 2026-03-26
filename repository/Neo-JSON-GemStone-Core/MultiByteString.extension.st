Extension { #name : 'MultiByteString' }

{ #category : '*neo-json-gemstone-core' }
MultiByteString >> neoJsonOn: neoJSONWriter [
	neoJSONWriter writeString: self
]
