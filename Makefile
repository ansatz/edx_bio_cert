gitpush_local-to-github-repo:
        # https://github.com/ansatz/edx_bio_cert.git
        git push -u origin main

sync-linode-to-acer:
	rsync -n -chavzP --stats --exclude 'data' root@45.79.195.182:/root/rstudio/edx_bio_cert /home/solver/sync-linode/
