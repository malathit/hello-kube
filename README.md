# hello-kube

This is a simple demo to run a sample nodejs rest app with data from mysql(maria db).

### Prerequisites

- Make
- kubectl
- Kubernetes cluster (using minikube preferably)
- docker

## Getting Started

1. Install docker from [here](https://docs.docker.com/install/).

2. Setup kubernetes cluster

    There are multiple ways to create kubernetes cluster. Minikube is used to create a local single node kubernetes cluster,  useful for development and testing.

    To bring up minikube cluster, run ```minikube start```

3. Install make if not installed.

### Installing

From the top level project directory, run ```make start```. You can see many deployments, services and configMaps created.

## What the project does?

This project deploys a [nodejs rest service](https://github.com/malathit90/hello-world-node) supported by mariadb service.

The file [app.yaml](api/app.yaml) has the service, deployment to bring the node rest service.

Similarly the file [db.yaml](db/db.yaml) has the service, deployment to create the maria db service.


## Built With

* [Make](https://www.gnu.org/software/make/manual/html_node/Introduction.html) - To create the kubernetes resource via yaml file with ease

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/malathit90/hello-kube/tags).

## Authors

* **Malathi** - *Initial work* - [malathit90](https://github.com/malathit90)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [Kubernetes](http://kubernetes.io)
