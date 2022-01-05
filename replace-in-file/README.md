# replace-in-file
Used for replacing a text value in a file.

```
- name: "gcr.io/$PROJECT_ID/replace-in-file"
  args: ["text to replace", "New text", "./html/base.html"]
```

Please note that this will only replace the first occurrence of the text.
To replace all occurrences you have to use the global pattern.

```
- name: "gcr.io/$PROJECT_ID/replace-in-file"
  args: ["/text to replace/g", "New text", "./html/base.html", "--isRegex"]
```

Read more in replace-in-file documentation: https://www.npmjs.com/package/replace-in-file