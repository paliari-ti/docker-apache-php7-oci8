# paliari/apache-php7-oci8
Docker image with apache, PHP 7 and oci8

> Images with *dev* suffix contains everything in *pro* and some other requirements for development like composer

### Versioning
| Docker Tag        | Apache Version | PHP Version | Debian Version |
|-------------------|----------------|-------------|----------------|
| 1.1.1-pro         | 2.4.38         | 7.4.10      | GNU/Linux 10   |
| 1.1.1-dev         | 2.4.38         | 7.4.10      | GNU/Linux 10   |
| 1.1.1-dev-xdebug  | 2.4.38         | 7.4.10      | GNU/Linux 10   |
| 1.0.3-pro         | 2.4.38         | 7.3.13      | GNU/Linux 10   |
| 1.0.3-dev         | 2.4.38         | 7.3.13      | GNU/Linux 10   |
| 1.0.3-dev-xdebug  | 2.4.38         | 7.3.13      | GNU/Linux 10   |

### Links
- [https://github.com/paliari-ti/docker-apache-php7-oci8](https://github.com/paliari-ti/docker-apache-php7-oci8)
- [https://hub.docker.com/r/paliari/apache-php7-oci8](https://hub.docker.com/r/paliari/apache-php7-oci8)

## Quick Start

To pull from docker hub:

```
docker pull paliari/apache-php7-oci8:1.1.1-dev
```

### Running

Run the container:

```
docker container run -p 80:80 -v $(pwd):/var/www/html -d paliari/apache-ssl-php7-oci8:1.1.1-dev
```

Author
-------

-	[Daniel Fernando Lourusso](http://dflourusso.com.br)
