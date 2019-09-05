# paliari/apache-php7-oci8
Docker image with apache, PHP 7 and oci8

> Images with *dev* suffix contains everything in *pro* and some other requirements for development like composer

### Versioning
| Docker Tag        | Apache Version | PHP Version | Debian Version |
|-------------------|----------------|-------------|----------------|
| 1.0.0-pro         | 2.4.38         | 7.3.9       | GNU/Linux 10   |
| 1.0.0-dev         | 2.4.38         | 7.3.9       | GNU/Linux 10   |
| 1.0.0-dev-xdebug  | 2.4.38         | 7.3.9       | GNU/Linux 10   |

### Links
- [https://github.com/paliari-ti/docker-apache-php7-oci8](https://github.com/paliari-ti/docker-apache-php7-oci8)
- [https://hub.docker.com/r/paliari/apache-php7-oci8](https://hub.docker.com/r/paliari/apache-php7-oci8)

## Quick Start

To pull from docker hub:

```
docker pull paliari/apache-php7-oci8:1.0.0-dev
```

### Running

Run the container:

```
docker container run -p 80:80 -v $(pwd):/var/www/html -d paliari/apache-ssl-php7-oci8:1.0.0-dev
```

Author
-------

-	[Daniel Fernando Louurusso](http://dflourusso.com.br)
