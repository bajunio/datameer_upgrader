Regular Upgrade Flow...

- stop old datameer
- unzip new datameer
- chown new datameer to datameer service account user
- update property files
- backup datameer db
- run upgrade db script
- start new datameer


I want to...

- modify property files
- run db upgrade script
- take backup of db
- check if datameer process is running


Variables...

- database host
- database port
- database name
- database user
- database pass

- datameer service account user
- datameer service account pass


General Notes...

- maybe do a diff on the old / new property files?  use that info to create the updated property files?
  for instance, I can grab out the -Xmx value from the original version and update the file for the new
    the trick will be dealing with the super custom property lines in say Log4j
    perhaps I can do the diff, then prompt to apply changes or not, it will force some interaction, but will be better to ensure no bad properties make it past

- I envision this to be a means of providing all variables up front and then calling the appropriate datameer script

- the tricky part will be updating the property files without pulling older, non-relavant settings in

