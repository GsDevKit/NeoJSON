Extension { #name : 'AbstractDictionary' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
AbstractDictionary class >> newFromPairs: aSequenceableCollection [
  | newDictionary |
  newDictionary := self new: (aSequenceableCollection size / 2) floor.
  1 to: aSequenceableCollection size - 1 by: 2 do: [ :i | 
    newDictionary
      at: (aSequenceableCollection at: i)
      put: (aSequenceableCollection at: i + 1) ].
  ^ newDictionary
]
