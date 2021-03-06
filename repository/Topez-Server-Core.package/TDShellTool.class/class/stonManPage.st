as yet unclassified
stonManPage
  ^ 'NAME
  ston - import/export objects to/from disk (STON format)

SYNOPSIS
  ston export <path> <server-file-path>
       export <path> @<server-path>
  ston import <path> <server-file-path>
       import <path> @<server-path>
  ston rsync [option]... source [source]... destination

DESCRIPTION

  rsync
  -----
    A trailing / on a source name means ''copy the contents of this directory''. 
    Without a trailing slash it means ''copy the directory''. 

    What to copy:
      -r, --recursive            Recurse into directories
      -R, --relative             Use relative path names
          --exclude=PATTERN      Exclude files matching PATTERN
          --exclude-from=FILE    Read exclude patterns from FILE
      -I, --ignore-times         Don''t exclude files that match length and time
          --size-only            only use file size when determining if a file should be transferred
          --modify-window=NUM    Timestamp window (seconds) for file match (default=0)
          --include=PATTERN      Don''t exclude files matching PATTERN
          --include-from=FILE    Read include patterns from FILE

    How to copy it:
      -n, --dry-run              Perform a trial run with no changes made
      -t, --times                Preserve times
      -x, --one-file-system       Don''t cross filesystem boundaries

    Destination options:
      -b, --backup                Make backups (see --suffix & --backup-dir)
          --backup-dir=DIR        Make backups into this directory
      -c, --checksum              Skip based on checksum, not mod-time & size
          --suffix=SUFFIX         Override backup suffix
          --existing              Only update files that already exist
          --delete                Delete files that don''t exist on the sending side
          --delete-excluded       also delete excluded files on the receiving side
          --delete-after          Receiver deletes after transfer, not during
          --force                 Force deletion of directories even if not empty
          --ignore-errors         Delete even if there are IO errors
      -u, --update                update only (don''t overwrite newer files)

    Misc Others:
      -h, --help                  show this help screen

  rsync references:
    http://ss64.com/bash/rsync.html
    http://ss64.com/bash/rsync_options.html
    http://en.wikipedia.org/wiki/Rsync#Determining_which_files_to_send
'