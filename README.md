```
.
├── Dockerfile <- app packaged via Dockerfile (kaniko build)
├── charts <- describes 'shape' of the application, can be in the same repo as app or 'charts' repo
│   └── sample-app
│       ├── Chart.yaml
│       ├── charts
│       ├── templates
│       │   ├── NOTES.txt
│       │   ├── _helpers.tpl
│       │   ├── build-sa.yaml
│       │   ├── build-secrets.yaml <- credentials (docker hub)
│       │   └── service.yaml <- how to continuosly build & deploy this app
│       └── values.yaml
└── rootfs <- dummy static site
    ├── app
    │   └── index.html
    └── bootit
```

## Flows

New app

```
prepare chart -> upload to helm repo
```

can get input from different teams, approvals, sign it, etc.



CI / CD (after installing helm chart):

```
github webhook > test & build > create revision > rollout > (trigger) > decomission previous revision
```
