# Start unitd
/usr/sbin/unitd

# Add app.json service configuration
curl -X PUT -d @app.json --unix-socket /var/run/control.unit.sock http://localhost

# Start nginx
nginx -g 'daemon off;'
