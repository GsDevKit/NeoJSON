Class {
	#name : 'PointArithmeticTests',
	#superclass : 'TestCase',
	#category : 'Neo-JSON-GemStone36--Tests'
}

{ #category : 'tests' }
PointArithmeticTests >> testCollectionArithmetic [

	self
		assert: (3 @ 4) + #(1 2 3)
		equals: {(4 @ 5). (5 @ 6). (6 @ 7)}.
	self
		assert: (3 @ 4) - #(1 2 3)
		equals:{(2 @ 3). (1 @ 2). (0 @ 1)}.
	self
		assert: (3 @ 4) * #(1 2 3)
		equals: {(3 @ 4). (6 @ 8). (9 @ 12)}.
	self
		assert: (3 @ 4) / #(1 2 3)
		equals: {(3 @ 4). ((3/2) @ 2). (1 @ (4/3))}.

	self
		assert: #(1 2 3) + (3 @ 4)
		equals: {(4 @ 5). (5 @ 6). (6 @ 7)}.
	self
		assert: #(1 2 3) - (3 @ 4)
		equals: {(-2 @ -3). (-1 @ -2). (-0 @ -1)}.
	self
		assert: #(1 2 3) * (3 @ 4)
		equals: {(3 @ 4). (6 @ 8). (9 @ 12)}.
	self
		assert: #(12 24 36) / (3 @ 4)
		equals: {(4 @ 3). (8 @ 6). (12 @ 9)}.
]

{ #category : 'tests' }
PointArithmeticTests >> testPointArithmetic [

	self
		assert: (3 @ 4) + (1 @ 2)
		equals: (4 @ 6).
	self
		assert: (3 @ 4) - (1 @ 2)
		equals: (2 @ 2).
	self
		assert: (3 @ 4) * (3 @ 2)
		equals: (9 @ 8).
	self
		assert: (3 @ 4) / (3 @ 2)
		equals: (1 @ 2).
]

{ #category : 'tests' }
PointArithmeticTests >> testScalarArithmetic [

	self
		assert: (3 @ 4) + 1
		equals: (4 @ 5).
	self
		assert: (3 @ 4) - 1
		equals: (2 @ 3).
	self
		assert: (3 @ 4) * 2
		equals: (6 @ 8).
	self
		assert: (3 @ 4) / 2
		equals: ((3/2) @ 2).

	self
		assert: 1 + (3 @ 4)
		equals: (4 @ 5).
	self
		assert: 1 - (3 @ 4)
		equals: (-2 @ -3).
	self
		assert: 2 * (3 @ 4)
		equals: (6 @ 8).
	self
		assert: (12 @ 8) / (3 @ 4)
		equals: (4 @ 2).
]
