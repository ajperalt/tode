menu actions (baseline)
cloneProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  projectTool projectClone: registration.
  listElement topez commitTransaction.
  ^ #'refreshView'