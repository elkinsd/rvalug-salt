
{% for username in salt['pillar.get']("users_absent",{}) %}
{{ username }}:
  user:
    - absent
    - purge: True
{% endfor %}

