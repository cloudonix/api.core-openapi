FROM docker.io/node:latest

WORKDIR /app
ADD reference /app/reference
RUN npm install widdershins
RUN ./node_modules/.bin/widdershins \
	--search true \
	--language_tabs 'php:PHP' 'java:Java' 'ruby:Ruby' 'python:Python' \
	--summary --yaml --theme github \
	--outfile Cloudonix-API.Core.md \
	reference/Cloudonix-API.Core.yaml
