httpd:
  pkg:
    - installed
    - name: {{ salt['pillar.get']('pkgs:httpd:pkg','httpd') }}
  service:
    - running
    - enable: True
    - name: {{ salt['pillar.get']('pkgs:httpd:service','httpd') }}
    - require:
      - pkg: {{ salt['pillar.get']('pkgs:httpd:pkg','httpd') }}

httpd.conf:
  file.managed:
    - name: {{ salt['pillar.get']('pkgs:httpd:conf','/etc/httpd/conf/httpd.conf') }}
    - user: root
    - group: root
    - mode: 644
    - source: salt://httpd/{{ grains['os'] }}/httpd.conf
    - require:
      - pkg: {{ salt['pillar.get']('pkgs:httpd:pkg','httpd') }}
    - watch_in:
      - service: {{ salt['pillar.get']('pkgs:httpd:service','httpd') }}
