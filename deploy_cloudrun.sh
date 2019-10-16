#!/bin/bash

read -p 'Please enter your project idea (ex: my-project-204828) : ' project_id
echo -e '\n'
read -p 'Please enter the tag you want for your image (ex: gpt2) : ' tag
echo -e "\nWarning!\nThis can take some time because of the size of images.\n"

gcloud builds submit "./gpt2-model" --tag "gcr.io/$project_id/$tag"

gcloud beta run deploy "$tag" \
    --image "gcr.io/$project_id/$tag" \
    --platform=managed \
    --allow-unauthenticated \
    --region=us-east1 \
    --concurrency=1 \
    --memory=2Gi

read -p 'Do yo want to delete images on GCR after building CloudRun services ? (y/n) : ' question
[ "$question" != "${question#[Yy]}" ] && gcloud container images delete --force-delete-tags "gcr.io/$project_id/$tag"

echo -e "\nDone!\nURLs of Cloud Run services:\n\n$(gcloud beta run services list --platform=managed |grep -Po 'https.?://\S+')"
