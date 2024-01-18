# SFTP exercise

> !! docker compose is required for this exercise

### objective
> Write a script with any language to move all files in sftp server sftp1 to sftp2 root dir. The original file shall be **removed** from sftp1 and placed at root dir(`/home/bar`) of sftp2

### How to start
Initial the environment by running ./start.sh
```bash
$ ./start.sh
```
It will spining up SFTP servers sftp1 and sftp2, generate random file structure in directory sftp1.
Below is an example file structure
```
/sftp1
└── depth1
    ├── 1-1.txt
    └── depth2
        ├── 2-1.txt
        ├── 2-2.txt
        ├── 2-3.txt
        ├── 2-4.txt
        └── depth3
            ├── 3-1.txt
            ├── 3-2.txt
            ├── 3-3.txt
            ├── 3-4.txt
            └── depth4
                └── 4-1.txt
```

To troubleshoot, you can connect sftp1 with below command, with password `pass`
```
sftp -o NoHostAuthenticationForLocalhost=yes -P 2222 foo@localhost
```
and sftp2
```
sftp -o NoHostAuthenticationForLocalhost=yes -P 2223 bar@localhost
```

To restart the environment, it will generate new random file structure in sftp1 and spin up new sftp servers
```
./restart.sh
```

Good Luck