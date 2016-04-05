# cloud-computing-assignments
This repo is for the tasks within our cloud computing lecture.

```mueller@cloud-ubu1404-desk:~$ ls
examples.desktop  flo_karlo  migrated  nohup.out  run  work
mueller@cloud-ubu1404-desk:~$ cd flo_karlo/
mueller@cloud-ubu1404-desk:~/flo_karlo$ ls
README.md
mueller@cloud-ubu1404-desk:~/flo_karlo$ git status
On branch master
nothing to commit, working directory clean
mueller@cloud-ubu1404-desk:~/flo_karlo$ git clone origin
fatal: repository 'origin' does not exist
mueller@cloud-ubu1404-desk:~/flo_karlo$ git pull origin develop
From https://github.com/KKraljic/cloud-computing-assignments
 * branch            develop    -> FETCH_HEAD
Already up-to-date.
mueller@cloud-ubu1404-desk:~/flo_karlo$ git checkout develop
Branch develop set up to track remote branch develop from origin.
Switched to a new branch 'develop'
mueller@cloud-ubu1404-desk:~/flo_karlo$ git pull feature/centos-bash
fatal: 'feature/centos-bash' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
mueller@cloud-ubu1404-desk:~/flo_karlo$ git pull origin feature/centos-bash
remote: Counting objects: 12, done.
remote: Compressing objects: 100% (8/8), done.
Unpacking objects: 100% (12/12), done.
remote: Total 12 (delta 1), reused 12 (delta 1), pack-reused 0
From https://github.com/KKraljic/cloud-computing-assignments
 * branch            feature/centos-bash -> FETCH_HEAD
 * [new branch]      feature/centos-bash -> origin/feature/centos-bash
Updating d9d8a2a..689fa09
Fast-forward
 centos-bash/Dockerfile | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 centos-bash/Dockerfile
mueller@cloud-ubu1404-desk:~/flo_karlo$ git checkout feature/centos-bash
Branch feature/centos-bash set up to track remote branch feature/centos-bash from origin.
Switched to a new branch 'feature/centos-bash'
mueller@cloud-ubu1404-desk:~/flo_karlo$ ls
centos-bash  README.md
mueller@cloud-ubu1404-desk:~/flo_karlo$ cd centos-bash
mueller@cloud-ubu1404-desk:~/flo_karlo/centos-bash$ ls
Dockerfile```

