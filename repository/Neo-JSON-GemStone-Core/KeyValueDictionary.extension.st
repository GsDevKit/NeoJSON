Extension { #name : 'KeyValueDictionary' }

{ #category : '*neo-json-gemstone-core' }
KeyValueDictionary class >> newFromPairs: anArray [
	"Answer an instance of me associating (anArray at:i) to (anArray at: i+i)
	 for each odd i.  anArray must have an even number of entries.
	 Dictionary newFromPairs: {'Red' . Color red . 'Blue' . Color blue . 'Green' . Color green}. "
	| newDictionary |

	newDictionary := self new: (anArray size/2).
	1 to: (anArray size-1) by: 2 do: [ :i|
		newDictionary at: (anArray at: i) put: (anArray at: i+1).
	].
	^ newDictionary

]

{ #category : '*neo-json-gemstone-core' }
KeyValueDictionary >> neoJsonOn: neoJSONWriter [
	neoJSONWriter writeMap: self
]
