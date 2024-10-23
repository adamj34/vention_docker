# Running playbook.yml after cloning the repository

- run build_and_run_images.sh to build images (use chmod +x if you don't have permissions to execute the script)

- use one of the commands (depending on the ansible version)

    docker run --rm -v $(pwd):/ansible ansible:2.14.13 playbook.yml
    
    docker run --rm -v $(pwd):/ansible ansible:2.16.2 playbook.yml

Note: The only requirement is that the command should be executed from the directory where the playbook and other ansible files are located.
