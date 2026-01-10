cd ~/Desktop/dippro
sudo bash scripts/cleanup.sh default
cd ~/Desktop
rm -rf dippro
git clone https://github.com/tisljaricleon/dippro.git
cp ~/.kube/config ~/Desktop/dippro/configs/cluster/kube_config.yaml