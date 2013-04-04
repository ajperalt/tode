accessing
builderClassNameFor: anObject aspect: anAspect do: aBlock
  self
    lookupClassNameFor: anObject
    aspect: anAspect
    in: self class nodeBuilders
    do: [ :className | 
      ^ className == nil
        ifTrue: [ aBlock value: 'TDObjectNodeBuilder' value: anAspect ]
        ifFalse: [ aBlock value: className value: anAspect ] ]