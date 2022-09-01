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

{ #category : 'arithmetic' }
Point >> - arg [ 
	"Answer a Point that is the difference of the receiver and arg."
	"((2@2) - (100@200)) >>> (-98@ -198)"
	"((2@2) - 200) >>> (-198@ -198)"
	
	arg isPoint ifTrue: [^ (x - arg x) @ (y - arg y)].
	^ arg adaptToPoint: self andSend: #-
]

{ #category : 'arithmetic' }
Point >> * arg [ 
	"Answer a Point that is the product of the receiver and arg."
	"((2@2) * (100@200)) >>> (200@400)"
	"((2@2) * 200) >>> (400@400)"
	
	arg isPoint ifTrue: [^ (x * arg x) @ (y * arg y)].
	^ arg adaptToPoint: self andSend: #*
]

{ #category : 'arithmetic' }
Point >> / arg [ 
	"Answer a Point that is the quotient of the receiver and arg."

	arg isPoint ifTrue: [^ (x / arg x) @ (y / arg y)].
	^ arg adaptToPoint: self andSend: #/
]

{ #category : 'arithmetic' }
Point >> + arg [ 
	"Answer a Point that is the sum of the receiver and arg."
	"((2@2) + (100@200)) >>> (102@202)"
	"((2@2) + 200) >>> (202@202)"
	
	arg isPoint ifTrue: [^ (x + arg x) @ (y + arg y)].
	^ arg adaptToPoint: self andSend: #+
]

{ #category : 'comparing' }
Point >> = anotherObject [

	^ self class = anotherObject class
		and: [self x = anotherObject x
		and: [self y = anotherObject y]]
]

{ #category : 'converting' }
Point >> adaptToCollection: rcvr andSend: selector [
	"If I am involved in arithmetic with a Collection, return a Collection of the results of each element combined with me in that expression."

	^ rcvr collect: [ :element | element perform: selector with: self ]
]

{ #category : 'converting' }
Point >> adaptToNumber: rcvr andSend: selector [
	"If I am involved in arithmetic with an Integer, convert it to a Point."

	^ rcvr @ rcvr perform: selector with: self
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

{ #category : 'testing' }
Point >> isPoint [

	^ true
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
