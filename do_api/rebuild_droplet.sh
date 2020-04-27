export DOTOKEN=735acabada936527cdf436399bc8eab312f213050f674dff9c57e1d413756a36

droplet_id=$1

curl -X POST "https://api.digitalocean.com/v2/droplets/$droplet_id/actions" \
  -H "Authorization: Bearer $DOTOKEN" \
  -H "Content-Type: application/json" \
  -d '{"type": "rebuild", "image": "debian-9-x64"}'
