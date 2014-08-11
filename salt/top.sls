base:
  'roles:devbox':
    - match: grain
    - programming
    - git
    - python
    - go
    - utilities
    - iptables
  'roles:cerebro':
    - match: grain
    - git
    - utilities
    - iptables
