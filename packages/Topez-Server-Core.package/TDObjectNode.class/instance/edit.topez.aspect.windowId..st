as yet unclassified
edit: parentNode topez: aTopez aspect: anAspect windowId: inWindowId
  "anAspect: #edit, #debug, #inspect"

  anAspect ~~ self aspect
    ifTrue: [ 
      ^ super
        edit: parentNode
        topez: aTopez
        aspect: anAspect
        windowId: inWindowId ].
  ^ self
    editClient: parentNode
    topez: aTopez
    aspect: anAspect
    windowId: inWindowId