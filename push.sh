# 6/boron
docker push makethunder/node:6-slim

# 8/carbon
docker push makethunder/node:8-jessie
docker push makethunder/node:8-slim

# 10
docker push makethunder/node:10-alpine
docker push makethunder/node:10-jessie
docker push makethunder/node:10-slim
docker push makethunder/node:10-stretch

docker tag makethunder/node:10 makethunder/node:10-jessie
docker tag makethunder/node:latest makethunder/node:10

docker push makethunder/node:10
docker push makethunder/node:latest
