# Update publish/geosite.dat
./domain-list-custom -excludeattrs "" -exportlists "" -togfwlist ""

# Hot reload OpenGFW by sending SIGHUP signal
if pgrep OpenGFW >/dev/null; then
  kill -HUP $(pgrep OpenGFW)
fi
