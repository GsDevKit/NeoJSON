accessing
findPath: conditionBlock
	"Find and return the first path to an object in the graph that I represent 
	for which conditionBlock holds. Return nil when not found."

	(conditionBlock value: self) ifTrue: [ ^ #(()) ].
	self doWithIndex: [ :value :index |
		(conditionBlock value: value) ifTrue: [ ^ { index } ].
		(value isCollection and: [ value isString not ]) ifTrue: [
			(value findPath: conditionBlock) ifNotNil: [ :subPath |
				^ { index } , subPath ] ] ].
	^ nil