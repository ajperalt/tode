editting
editList: aCollectionOfObjects label: labelString inWindow: windowIdOrNil
    | windowId label |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    (self windowAt: windowId) model
        activateListEditor;
        list: aCollectionOfObjects;
        label: label;
        windowId: windowId.
    ^ ''