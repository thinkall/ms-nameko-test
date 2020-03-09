alias ocmini='/Users/jiangli/.minishift/cache/oc/v3.11.104/darwin/oc'

# ocmini delete all -l app

ocmini new-app -f nameko-all-template.yaml --env-file new-app.env
