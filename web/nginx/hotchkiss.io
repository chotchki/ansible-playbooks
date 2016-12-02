server {
	listen [2001:470:e21e:0:2015:9:20:3]:443 ssl default_server;
    
    ssl_certificate     /etc/nginx/cloudflare-ssl/hotchkiss.io.pem;
    ssl_certificate_key /etc/nginx/cloudflare-ssl/hotchkiss.io.key;
    
    ssl_client_certificate /etc/nginx/cloudflare-ssl/origin-pull-ca.pem;
    ssl_verify_client on;
    
    ssl_protocols       TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;

	root /var/www/hotchkiss-io;

	# Add index.php to the list if you are using PHP
	index index.html;

	server_name hotchkiss.io;

    location ~ /\.git {
      deny all;
    }

	location / {
		try_files $uri $uri/ =404;
	}

}
