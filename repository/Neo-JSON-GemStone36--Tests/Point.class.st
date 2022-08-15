"
Point placeholder for testing JSON functionality.
"
Class {
	#name : 'Point',
	#superclass : 'Object',
	#instVars : [
		'x',
		'y'
	],
	#category : 'Neo-JSON-GemStone36--Tests'
}

{ #category : 'instance creation' }
Point class >> x: xInteger y: yInteger [
	"Answer an instance of me with coordinates xInteger and yInteger."

	^ self basicNew setX: xInteger setY: yInteger
]

{ #category : 'comparing' }
Point >> = anotherObject [

	^ self class = anotherObject class
		and: [self x = anotherObject x
		and: [self y = anotherObject y]]
]

{ #category : 'printing' }
Point >> asString [

	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: '(';
				print: self x;
				nextPutAll: ' @ ';
				print: self y;
				nextPutAll: ')' ]
]

{ #category : 'comparing' }
Point >> hash [

	^ x bitXor: y
]

{ #category : 'printing' }
Point >> printOn: aStream [

	aStream
		nextPutAll: '(';
		print: self x;
		nextPutAll: ' @ ';
		print: self y;
		nextPutAll: ')'
]

{ #category : 'private' }
Point >> setX: xValue setY: yValue [
	x := xValue.
	y := yValue
]

{ #category : 'accessing' }
Point >> x [
	"Answer the x coordinate."
	"(100@200) x >>> 100"

	^ x
]

{ #category : 'accessing' }
Point >> y [
	"Answer the y coordinate."
	"(100@200) y >>> 200"

	^ y
]
