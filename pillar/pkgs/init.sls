pkgs:
  {% if grains['osarch'] == 'armv6hl' %}
  go: golang.armv6hl
  git: git.armv6hl
  pip: python-pip.armv6hl
  pip3: python3-pip.armv6hl
  python: python.armv6hl
  python3: python3.armv6hl
  tree: tree.armv6hl
  vim: vim-enhanced.armv6hl
  {% elif grains['os_family'] == 'RedHat' %}
  go: golang
  git: git
  pip: python-pip
  pip3: python3-pip
  python: python
  python3: python3
  tree: tree
  vim: vim-enhanced
  {% elif grains['os_family'] == 'Debian' %}
  go: golang
  git: git
  pip: python-pip
  pip3: python3-pip
  python: python
  python3: python3
  tree: tree
  vim: vim
  {% elif grains['os'] == 'Arch' %}
  go: golang
  git: git
  pip: python-pip
  pip3: python3-pip
  python: python
  python3: python3
  tree: tree
  vim: vim
  {% endif %}

pip-pkgs:
  virtualenv: virtualenv