#!/bin/sh
latexmk
gcloud storage cp main.pdf gs://web.evanchen.cc/upload/geombook-errata.pdf --cache-control='max-age=0, private'
