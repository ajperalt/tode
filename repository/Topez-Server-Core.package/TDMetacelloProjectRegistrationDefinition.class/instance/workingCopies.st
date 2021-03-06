accessing
workingCopies
  | version workingCopies |
  self isLoadedInImage
    ifTrue: [ 
      version := self registration projectVersion.
      version
        ifNil: [ 
          "project has been unloaded from image"
          ^ #() ].
      workingCopies := version packages collect: [ :pkg | pkg workingCopy ] ]
    ifFalse: [ workingCopies := {} ].
  workingCopies add: self projectSpec projectPackage workingCopy.
  self hybridBaselineProjectSpec
    ifNotNil: [ :baselineProjectSpec | workingCopies add: baselineProjectSpec projectPackage workingCopy ].
  ^ workingCopies reject: [ :each | each isNil ]