export DOTOKEN=735acabada936527cdf436399bc8eab312f213050f674dff9c57e1d413756a36

curl -X POST "https://api.digitalocean.com/v2/droplets" \
  -H "Authorization: Bearer $DOTOKEN" \
  -H "Content-Type: application/json" \
  -d '{"name": "my-droplet", "region": "nyc3", "size": "s-1vcpu-1gb", "image": "ubuntu-14-04-x64"}'
