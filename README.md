# Requirements
* VT-x/AMD-v virtualization is enabled in BIOS<br>To check that this is enabled on OSX (most newer Macs have this enabled by default), run:
```cfg
sysctl -a | grep machdep.cpu.features | grep VMX
```
* OS X install
    * [xhyve driver](DRIVERS.md#xhyve-driver), [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [VMware Fusion](https://www.vmware.com/products/fusion) installation
* git
* curl
* mysql client

# Usage
* Install and start minikube
```cfg
./InstallAndStartMinikube.sh
# 1 Install Minikube and Kubectl
# 2 git get tidb-on-k8s
# 3 start minikube (if need proxy, just set minikube start --docker-env HTTP_PROXY=http://proxy:28123 --docker-env HTTPS_PROXY=https://proxy:28123)
# 4 output dashboard web url | mysql client connect cmd 
```
* Build TiDB Cluster
```cfg
./buildCluster.sh	
# 1 launch pd
# 2 launch tikv
# 3 launch tidb
```
* Close TiDB Cluster
```cfg
closeCluster.sh
# 1 close pd
# 2 close tikv
# 3 close tidb
```

#Note
* Minikube is a tool that makes it easy to run Kubernetes locally. Minikube runs a single-node Kubernetes cluster inside a VM on your laptop for users looking to try out Kubernetes or develop with it day-to-day.
* The first start will be a little slow, because of the need to pull image, take it easy!
