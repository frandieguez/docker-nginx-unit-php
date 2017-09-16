# Test container for nginx + nginx core + php

![Nginx core](https://cdn-1.wp.nginx.com/wp-content/uploads/2017/09/NGINX-Unit-logo-mobile-326x140@2x.png)

This is just a proof of concept for running php apps with the new
[Nginx unit](https://www.nginx.com/products/nginx-unit/)

# Start the container

```bash
  docker-compose build
  docker-compose up
```

Now you can visit http://localhost on your browser and check the phpinfo page runned by php embed.

## Questions
Tested by [Fran Dieguez](http://www.frandieguez.com)