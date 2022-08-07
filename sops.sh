kubectl create namespace flux-system

export SOPS_AGE_KEY_FILE=$(pwd)/age.agekey

cat age.agekey |
kubectl create secret generic sops-age \
--namespace=flux-system \
--from-file=age.agekey=/dev/stdin