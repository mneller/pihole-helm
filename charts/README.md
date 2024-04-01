## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

helm repo add mneller https://mneller.github.io/pihole-helm

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
pihoel-helm` to see the charts.

To install the pihole-helm chart:

    helm install my-pihole-helm mneller/pihole-helm

To uninstall the chart:

    helm delete my-pihole-helm