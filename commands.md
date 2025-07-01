# Useful Linux + Git Commands

## Linux
 - tar -czf backup.tar.gz folder/	-> archive folder
 - free -h				-> memory usuage
 - df -h				-> disk usage
 - uptime				-> CPU load
 - ps 					-> processors

## Crontab
 - crontab -e				-> personal schedule file
 -  * * * * * command_to_run
 -  │ │ │ │ │
 -  │ │ │ │ └── Day of the week (0-6, 0 = Sunday)
 -  │ │ │ └──── Month (1-12)
 -  │ │ └────── Day of the month (1-31)
 -  │ └──────── Hour (0-23)
 -  └────────── Minute (0-59)

## Git
 - git status				-> see changes
 - git log				-> commit history
 - git diff 				-> show file changes
 - git reset HEAD~1			-> undo last commit (soft)
 - git revert <commit>			-> reverse a commit safely
