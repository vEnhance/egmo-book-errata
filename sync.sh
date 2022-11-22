#!/bin/sh
latexmk
gsutil cp geombook-errata.pdf gs://web.evanchen.cc/upload/
gsutil setmeta -h 'Cache-Control:private, max-age=0, no-transform' gs://web.evanchen.cc/upload/geombook-errata.pdf
