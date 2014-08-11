{% set base_user = pillar['users']['base_user'] %}

{{ base_user }}:
  user.present:
    - fullname: {{ base_user }}
    - shell: /bin/bash
    - home: /home/{{ base_user }}
    - uid: 4000
    - gid: 4000
    - groups:
      - wheel


