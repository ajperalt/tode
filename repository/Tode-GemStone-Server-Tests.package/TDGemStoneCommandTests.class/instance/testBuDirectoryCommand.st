as yet unclassified
testBuDirectoryCommand
  "run without errors ... to keep me honest"

  | backupDirectoryPath |
  backupDirectoryPath := TDGemStoneTool defaulBackupDirectoryName.
  self topez
    evaluateCommandString: 'bu --help directory';
    evaluateCommandString: 'bu directory';
    evaluateCommandString: 'bu directory ' , backupDirectoryPath;
    yourself