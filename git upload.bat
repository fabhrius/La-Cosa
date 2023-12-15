
REM Get the current date and time
set "datetime=%DATE% %TIME%"
set "datetime=%datetime:~0,2%%datetime:~3,2%%datetime:~6,4%_%datetime:~12,2%%datetime:~15,2%%datetime:~18,2%"

REM Add all changes to the staging area
git add .

REM Commit the changes with the current date and time
git commit -m "Update on %datetime%"

REM Push the changes to the remote repository
git push origin

Pause

