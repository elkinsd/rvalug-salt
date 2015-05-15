sshd:
  pkg:
    - installed
    - name: {{ salt['pillar.get']('pkgs:sshd:pkg','ssh') }}
  service:
    - running
    - enable: True
    - name: {{ salt['pillar.get']('pkgs:sshd:service','sshd') }}
    - require:
      - pkg: {{ salt['pillar.get']('pkgs:sshd:pkg','ssh') }}

/etc/ssh/sshd_config:
  file.managed:
    - user: root
    - group: root
    - mode: 600
    - source: salt://ssh/sshd_config
    - require:
      - pkg: {{ salt['pillar.get']('pkgs:sshd:pkg','ssh') }}
    - watch_in:
      - service: {{ salt['pillar.get']('pkgs:sshd:service','sshd') }}
