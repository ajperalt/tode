as yet unclassified
methodDefinitionFor: selector
  ^ self object asTDClassDefinition
    methodDefinitionFor: selector
    isMeta: self isMeta