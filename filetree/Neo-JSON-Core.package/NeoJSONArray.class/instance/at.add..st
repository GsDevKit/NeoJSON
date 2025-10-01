adding
at: index add: object
	^ index = '-'
		ifTrue: [ self addLast: object ]
		ifFalse: [ self insert: object before: index ]