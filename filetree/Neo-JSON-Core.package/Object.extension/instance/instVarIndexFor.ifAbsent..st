*neo-json-core
instVarIndexFor: anInstVarNameString ifAbsent: aBlock
  | idx |
  idx := self allInstVarNames indexOf: anInstVarNameString asSymbol.
  idx = 0
    ifTrue: [ ^ aBlock value ].
  ^ idx
