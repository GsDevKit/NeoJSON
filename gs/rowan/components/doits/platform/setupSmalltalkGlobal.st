Smalltalk isNil
	ifTrue: [ Smalltalk := SmalltalkSurrogate ]
	ifFalse: [(Smalltalk isBehavior and: [Smalltalk name = #SmalltalkSurrogate])
			ifTrue: [Smalltalk := SmalltalkSurrogate]]

