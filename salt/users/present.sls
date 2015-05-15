
{% for username in salt['pillar.get']("users_present",{}) %}
{{ username }}:
  group:
    - present
  user:
    - present
    - gid_from_name: True
    - shell: /bin/bash
    - password: '$6$aasdfASDF$jP6.3QMiPgO4ZzcEe.uKwiS1CzhnGYsml.kA1MwSGB4XYEHswa1kOE4pfmBOMBMPF30ljf2JsS3.NWH8vs6b71'
    - optional_groups:
      - wheel
      - staff
    - require:
      - group: {{ username }}
      - group: staff
  ssh_auth:
    - present
    - user: {{ username }}
    - name: [[ SSH KEY CONTENTS ]]
    - enc: ssh-dss
    - require:
      - user: {{ username }}

{% endfor %}
