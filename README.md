# skupper-sample-helm-operator

## Pre-requisites

- [operator-sdk](https://github.com/operator-framework/operator-sdk/releases)
  - this guide uses `v1.15.0`
- minikube
  - `minikube v1.18.1 on Darwin 11.6`

## First Steps

#### Init repo as Helm Operator

```
operator-sdk init --domain=example.com --project-name=skupper-sample-helm-operator --plugins helm
```

#### Create API

```
operator-sdk create api --group skuppersample --version v1alpha1 --kind SkupperSample
```

#### Test it out

```
make install run
```

- `install` will create the CRD on your k8s environment
- `run` will run the operator controller locally

```
kubectl apply -f config/samples/skuppersample_v1alpha1_skuppersample.yaml
```

- this creates an instance of the CR on the k8s environment
- the operator will now create the application

```
kubectl delete skuppersample skuppersample-sample
```

- deletes the CR and operator will uninstall everything
