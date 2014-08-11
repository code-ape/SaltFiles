{% if 'vagrant' in grains['roles'] %}
{% set base_user = "vagrant" %}
{% elif 'cerebro' in grains['roles'] %}
{% set base_user = "pi" %}
{% else %}
{% set base_user = "codeape" %}
{% endif %}

users:
  base_user: {{ base_user }}
  root: root

programming_dir: /home/{{ base_user }}/programming/