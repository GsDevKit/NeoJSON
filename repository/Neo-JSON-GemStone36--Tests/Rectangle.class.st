"
Rectangle placeholder for testing JSON functionality.
"
Class {
	#name : 'Rectangle',
	#superclass : 'Object',
	#instVars : [
		'origin',
		'corner'
	],
	#category : 'Neo-JSON-GemStone36--Tests'
}

{ #category : 'instance creation' }
Rectangle class >> origin: originPoint extent: extentPoint [
	"Answer an instance of me whose top left corner is originPoint and width by height is extentPoint. Note that extentPoint should be non negative since it represents the size of the rectangle"

	^self basicNew
		setPoint: originPoint
		point: (originPoint x+ (extentPoint x max: 0)) @ (originPoint y + (extentPoint y max: 0)).
]

{ #category : 'comparing' }
Rectangle >> = anotherObject [

	^ self class = anotherObject class
		and: [self origin = anotherObject origin
		and: [self corner = anotherObject corner]]
]

{ #category : 'accessing' }
Rectangle >> corner [

	^corner
]

{ #category : 'comparing' }
Rectangle >> hash [

	^ origin hash bitXor: corner hash
]

{ #category : 'accessing' }
Rectangle >> origin [

	^origin
]

{ #category : 'printing' }
Rectangle >> printOn: aStream [

	aStream
		nextPutAll: '(';
		print: self class;
		space;
		nextPutAll: #'origin:';
		space;
		print: origin;
		space;
		nextPutAll: #'corner:';
		space;
		print: corner;
		nextPutAll: ')'
]

{ #category : 'private' }
Rectangle >> setPoint: pt1 point: pt2 [

	origin := (pt1 x min: pt2 x)@(pt1 y min: pt2 y).
	corner := (pt1 x max: pt2 x)@(pt1 y max: pt2 y).
]
