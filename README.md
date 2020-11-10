# cloud-builders

Google Cloud build Docker containers to be used in your build chain. Check each subfolder for more information on how to use the builder step.

### Builders

Name | Type | Description | Additional info
-----|------|-------------|----------------
[firebase_node](https://github.com/kallsbo/cloud-builders/tree/master/firebase_node) | Unit-test & deploy | NPM, JRE and Firebase tools to be used for unit-testing and deploy to Firebase | https://hackviking.com/2020/11/10/firebase-unit-testing-firestore-rules/
[replace-in-file](https://github.com/kallsbo/cloud-builders/tree/master/replace-in-file) | Code manipulation | Used for replacing text values in files during the build.
[uglify-js-folder](https://github.com/kallsbo/cloud-builders/tree/master/uglify-js-folder) | Code manipulation | Used for minifying an entire folder of JS files.
[uglify-js](https://github.com/kallsbo/cloud-builders/tree/master/uglify-js) | Code manipulation | Used for minifying a single JS file.

### Build containers
Of course you can build the containers locally to test. With the commands below they will be available via the gcr.io namespace to be used in your build chains.  

__Clone the repository:__
```
git clone https://github.com/kallsbo/cloud-builders.git
```
__Run build command in the sub folder the build step you want:__
```
gcloud builds submit .
```
