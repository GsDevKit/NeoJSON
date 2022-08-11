Class {
	#name : 'SmalltalkSurrogate',
	#superclass : 'Object',
	#instVars : [
		'origin',
		'corner'
	],
	#category : 'Neo-JSON-GemStone36--Tests'
}

{ #category : 'accesssing' }
SmalltalkSurrogate class >> at: aSymbol ifAbsent: aBlock [
	"Answer the object known by aSymbol, if there is one.
	 Otherwise, answer the result of evaluating aBlock."

	| assn |
	assn := System myUserProfile resolveSymbol: aSymbol.
	^ assn == nil
		ifTrue: [ aBlock value ]
		ifFalse: [ assn value ]
]

{ #category : 'accesssing' }
SmalltalkSurrogate class >> at: aSymbol ifPresent: aOneArgBlock [
	"Answer the result of evaluating aOneArgBlock with
	 the global named by aSymbol, if found.
	 Otherwise answer nil.
	 The block need not require an argument."

	| global |
	global := self at: aSymbol ifAbsent: [ ^nil ].
	^aOneArgBlock cull: global
]

{ #category : 'initializing' }
SmalltalkSurrogate class >> initialize [
	"Install this class as the global named #Smalltalk,
	 unless something else is already assigned to it."

	self
		at: #Smalltalk
		ifAbsent: [UserGlobals at: #Smalltalk put: self]
]
