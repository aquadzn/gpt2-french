#!/bin/bash

for d in gpt2-models/*; do
    [ -f "$d" ] && continue 
    tag=$(echo "$d" | cut -d "/" -f2-)
    gcloud builds submit "$d" --tag "gcr.io/deep-learning-254808/$tag"
done
