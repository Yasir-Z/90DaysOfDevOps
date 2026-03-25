## What ConfigMaps and Secrets are and when to use each

Ans: Configmap used to store plan text data while secrets are used to store sensitive data.

## The difference between environment variables and volume mounts

Ans: Eenvironment variables is a key-pair data which is used for configuiration and it stored insdie the container one container is gone data 
      gets lost aswell. while volume mounts is used to access filesystem inside the container it used for data persistance aswell which protects 
      data from lossing.

## Why base64 is encoding, not encryption

Ans: Because it can be decoded by any user having cluster level access.

## How ConfigMap updates propagate to volumes but not env vars

Ans: 
