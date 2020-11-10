# firebase_node
NPM based firebase tools for unit testing and deploy.  
The container includes java runtime for emulators.  
Supports all the Firebase emulators.  
Example for unit testing firestore rules below.  

```
- name: gcr.io/$PROJECT_ID/firebase_node
  args: ['emulators:exec', 'npm test', '--only=firestore']
```

```
- name: gcr.io/$PROJECT_ID/firebase_node
  args: ['deploy', '--project=exampleproject', '--only=firestore:rules']
```
