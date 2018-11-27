#!/bin/bash
for name in 'easytravel-mongodb' 'easytravel-backend' 'easytravel-frontend' 'easytravel-www' 'easytravel-loadgen'; do
  oc delete svc ${name}
  oc delete rc ${name}
  oc delete pod ${name}
done
