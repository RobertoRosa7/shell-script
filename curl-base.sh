#!/usr/bin/env bash

# [HTTP REQUEST]
# [GET] curl -H "Accept: application/json" -X GET http://localhost/api
# [POST] curl -H "Content-Type: application/json" -X POST -d '{"name":"Arthur Silva","username":"silvaarthur"}' http://localhost/api
# [DELETE] curl -X DELETE http://localhost/api
# [PUT] curl -X PUT http://localhost/api

# convert to base64
email=$(echo -n "kakashi.kisura7@gmail.com" | base64)
password=$(echo -n "123456" | base64)
URL_BASE="http://127.0.0.1:5000"

# token=$(curl -H "Accept: application/json" \
#   -H "Authorization: ${email}:${password}" \
#   -X GET "${URL_BASE}/login/signin" | cut -d ":" -f2 | sed 's/[{}]/''/g;s/"//g')

# cat token.txt | cut -d ":" -f2 | sed 's/[{}]/''/g;s/"//g'

function getToken() {
  local token=$(curl -H "Accept: application/json" \
  -H "Authorization: ${email}:${password}" \
  -X GET "${URL_BASE}/login/signin" | cut -d ":" -f2 | sed 's/[{}]/''/g;s/"//g')
  echo $token
}

function getConsolidado() {
  local request=$(curl -v -H "Accept: application/json" -H "Token:Bearer $(getToken)" -X GET "${URL_BASE}/dashboard/calc_consolidado")
  echo $request
}

getConsolidado