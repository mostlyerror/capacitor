export DOTOKEN=735acabada936527cdf436399bc8eab312f213050f674dff9c57e1d413756a36

droplet_id=$(./get_current_droplet_id.sh)
echo "current droplet_id: $droplet_id"

./rebuild_droplet.sh $droplet_id
