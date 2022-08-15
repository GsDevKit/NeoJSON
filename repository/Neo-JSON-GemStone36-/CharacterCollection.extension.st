Extension { #name : #CharacterCollection }

{ #category : #'*Neo-JSON-GemStone36-' }
CharacterCollection >> neoJsonOn: neoJSONWriter [
	"In Pharo, String is the top of the hierarchy.
	 In GemStone, that is CharacterCollection."

	neoJSONWriter writeString: self
]
