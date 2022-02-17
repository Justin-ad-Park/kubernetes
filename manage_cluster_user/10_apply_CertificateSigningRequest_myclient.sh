#!/bin/bash

crs_name="myclient"
csrfilename="myclient.csr"



cat <<EOF | kubectl apply -f -
apiVersion: certificates.k8s.io/v1beta1
kind: CertificateSigningRequest
metadata:
  name: ${crs_name}
spec:
  signerName: kubernetes.io/kubelet-serving
  groups:
  - system:authenticated
  request: $(cat ${csrfilename} | base64 | tr -d '\n')
  usages:
  - digital signature
  - key encipherment
  - client auth
EOF