# upload-myapp-data

#
gcloud config set project fujimoto-research

#
gsutil -m rsync -r app gs://data-fr/m/$(hostname)/app
