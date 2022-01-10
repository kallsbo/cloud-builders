# electron-builder
Used to build Electron [ElectronJS](https://www.electronjs.org/) apps with [electron-builder](https://www.electron.build)

### Background
I needed to build .deb packages for Raspberry Pi on a windows machine and realised that the electron-builder remote building service was discontinued.
Since you can't build native Linux packages on a windows machine I created a quick docker container and then migrated it to GCP Build.
This container can also be used locally to build your Linux native packages.

### Local use
Tested on windows with Docker Desktop. Just clone or download the Dockerfile and build a local image.
```
docker build -t electron-builder .
```
Then mount your project into a folder in the container, in this example **/workspace** is used.
This example builds a Linux deb file for Raspberry Pi armv7l architecture.
You can append any arguments supported by **electron-builder**, see the [Command Line Interface CLI](https://www.electron.build/cli) specifications for more information.
```
docker run --rm -it --workdir /workspace -v C:\users\Administrator\Documents\Projects\screenis\electron_app\:/workspace electron-builder --linux deb --armv7l
```
Just make sure to run **nmp install** before executing the **electron-builder**

### Google Cloud Build use
First you need to build the container image for your project to use.
```
git clone https://github.com/kallsbo/cloud-builders.git
cd cloud-builders/electron-builder
gcloud builds submit .
```

First step is to install all the dependencies with **npm install**. The node container is native to Google Cloud Buildso you don't have to build it your self.
Second step executes the **electron-builder**, in this example to build a Linux deb packages for armv7l architecture on the Raspberry Pi.
You can use any arguments supported by **electron-builder**, see the [Command Line Interface CLI](https://www.electron.build/cli) specifications for more information.
This is only tested for building native Linux images, don't know if it will build windows installers etc.
```
steps:
- name: node
  id: install
  entrypoint: npm
  args: ['install']

- name: gcr.io/$PROJECT_ID/electron-builder
  id: package
  waitFor:
    - install
  args: ['--linux', 'deb', '--armv7l']

artifacts:
  objects:
    location: 'gs://artifacts.$PROJECT_ID.appspot.com/rpi-client-app-deb/'
    paths: ['dist/*.deb']
```