## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

helm repo add mneller https://mneller.github.io/pihole-helm

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
pihoel-helm` to see the charts.

To install the pihole-helm chart:

    helm install pihole mneller/pihole

To uninstall the chart:

    helm delete my-pihole-helm

##  Added 21.04.2024:
I integrated a GitRunner to automatically generate a new helm chart after a pull

You can upgrade the version with the following command

>    helm repo update # Pull the new version from github
> 
>    helm repo update # Validate if the new version is there
> 
>    helm upgrade pihole mneller/pihole 
> 
>   helm list # Validate the installation
    