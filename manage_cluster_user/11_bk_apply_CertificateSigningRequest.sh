#!/bin/bash

crs_name="mycsr"

#name default : my-user
name="${1:-my-user}"
csrfilename="${2:-client.csr}"



cat <<EOF | kubectl apply -f -
apiVersion: certificates.k8s.io/v1
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
  - server auth
EOF