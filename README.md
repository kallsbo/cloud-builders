# cloud-builders

Google Cloud build Docker containers to be used in your build chain. Check each subfolder for more information on how to use the builder step.

### Builders

##### replace-in-file
Used for replacing text values in files during the build.

##### uglify-js-folder
Used for minifying an entire folder of JS files.

##### uglify-js
Used for minifying a single JS file.

### USE
__Clone the repository:__
```
git clone https://github.com/kallsbo/cloud-builders.git
```
__Run build command in the sub folder the build step you want:__
```
gcloud builds submit
```
