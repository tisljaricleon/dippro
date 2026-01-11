# global aggregator
kubectl label --overwrite nodes user fl/type=global_aggregator

# Jetson (ARM64) client node
kubectl label --overwrite nodes sem2-desktop fl/type=client kubernetes.io/arch=arm64
kubectl label --overwrite nodes sem2-desktop comm/user=100
kubectl label --overwrite nodes sem2-desktop fl/num-partitions=2
kubectl label --overwrite nodes sem2-desktop fl/partition-id=0

# Normal (x86_64) client node
kubectl label --overwrite nodes worker1 fl/type=client kubernetes.io/arch=amd64
kubectl label --overwrite nodes worker1 comm/user=100
kubectl label --overwrite nodes worker1 fl/num-partitions=2
kubectl label --overwrite nodes worker1 fl/partition-id=1