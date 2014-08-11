
iptables:
  pkg:
    - installed
  service:
    - running
    - requre:
      - pkg: iptables


/etc/iptables.rules:
  file.managed:
    - source: salt://iptables/iptables.rules
    - user: root
    - group: root
    - mode: 644


