Class {
	#name : 'Attachment',
	#superclass : 'Object',
	#instVars : [
		'url',
		'fileName'
	],
	#category : 'Neo-JSON-GemStone-Examples'
}

{ #category : 'accessing' }
Attachment >> fileName: anObject [
	fileName := anObject
]

{ #category : 'accessing' }
Attachment >> url: anObject [
	url := anObject
]
