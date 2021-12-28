# upload-myapp-data

#
# curl https://raw.githubusercontent.com/ffflab/stuff/master/exec/upload-myapp-data.sh | bash
#

#
gcloud config set project fujimoto-research

#
gsutil -m rsync -r app gs://data-fr/m/$(hostname)/app
