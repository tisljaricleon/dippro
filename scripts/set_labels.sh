# global aggregator
kubectl label --overwrite nodes user fl/type=global_aggregator

# client
kubectl label --overwrite nodes sem2-desktop fl/type=client
kubectl label --overwrite nodes sem2-desktop comm/user=100
kubectl label --overwrite nodes sem2-desktop fl/num-partitions=2
kubectl label --overwrite nodes sem2-desktop fl/partition-id=0

kubectl label --overwrite nodes worker1 fl/type=client
kubectl label --overwrite nodes worker1 comm/user=100
kubectl label --overwrite nodes worker1 fl/num-partitions=2
kubectl label --overwrite nodes worker1 fl/partition-id=1