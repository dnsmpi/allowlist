# Read the domain list into regex format
domains=$(sed 's/\./\\./g' data/allow | paste -sd '|' -)

# Build the one single regex geosite file
mkdir -p build
echo "regexp:(^|\\.)(${domains})\$" > build/allow

# Generate publish/geosite.dat
./domain-list-custom -datapath "build" -excludeattrs "" -exportlists "" -togfwlist ""

# Hot reload OpenGFW by sending SIGHUP signal
if pgrep OpenGFW >/dev/null; then
  kill -HUP $(pgrep OpenGFW)
fi
