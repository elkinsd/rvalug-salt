pkgs:
{% if grains.os == 'CentOS' %}
  - sshd:
    - pkg: openssh
    - service: sshd
  - httpd:
    - pkg: httpd
    - service: httpd
    - conf: /etc/httpd/conf/httpd.conf

{% elif grains.os == 'Debian' %}
  - sshd:
    - pkg: ssh
    - service: sshd
  - httpd:
    - pkg: apache2
    - service: apache2
    - conf: /etc/apache2/sites-enabled/000-default.conf

{% endif %}
