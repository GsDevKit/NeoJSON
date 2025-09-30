accessing
findPaths: conditionBlock
	"Find and return all paths to objects in the graph that I represent 
	for which conditionBlock holds. Return an empty collection when none are found."

	| found |
	found := OrderedCollection new.
	self keysAndValuesDo: [ :key :value |
		(conditionBlock value: value) ifTrue: [ found add: { key } ].
		(value isCollection and: [ value isString not ]) ifTrue: [
			(value findPaths: conditionBlock) do: [ :subPath |
				found add: { key } , subPath ] ] ].
	^ found