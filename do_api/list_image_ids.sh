export DOTOKEN=735acabada936527cdf436399bc8eab312f213050f674dff9c57e1d413756a36

curl -X GET "https://api.digitalocean.com/v2/images" \
  -H "Authorization: Bearer $DOTOKEN" \
  | jQ .
  # | jQ ".images[] | {id, distribution, name}"
