openssl genrsa -out myclient.key 2048


#/O=RoleBinding의 Group, /CN=RoleBinding의 User
openssl req -new -key myclient.key -out myclient.csr -subj "/O=pmodevteam/CN=myclient"

