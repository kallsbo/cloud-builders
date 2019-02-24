FROM gcr.io/cloud-builders/npm

RUN npm install uglify-js

ENTRYPOINT ["ng"]
