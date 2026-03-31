## What Helm is and the three core concepts

Ans: Helm is package manager for kubernetes which provides templates of yml menifest files with configureable valuses so instead of creating 
raw yaml files over and over helm templates can be used by just puting valuses in them. 

- Chatrs: It's package which contains templates of files that be used in kubernetes by pusting values in them.

- Realses: When a template is filled with valuses on deployed on kubernetes and its in running instance state, its called release.

- Repository: A storage location of templates.

## How to install, customize, upgrade, and rollback

- Installation: https://helm.sh/docs/intro/install/

- customize: It referres to adjusting helm chart default values according to application required values, it can be done using custom values
  file "helm install my-release my-chart -f custom-values.yaml". 

- upgrade: When there are updates on existing chart with new version of app or if there is change in application. It can be done multiple simple
  ways and one of them is "helm upgrade my-release my-chart -f custom-values.yaml".

- rollback: It restores a previous release version used to undo wrong configurations, recover fail deployments and maintain system stability.

## The structure of a Helm chart and how Go templating works

Ans: Helm chart is repository which is having multiple file and subfolder in it. Each file containers some basic chart infor and default configuration
of the chart. Subfolders having templates in them.

## Your custom-values.yaml with explanations.
   
   >>> Yet to explore <<<

