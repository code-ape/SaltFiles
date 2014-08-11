
iptables:
  pkg:
    - installed
    - name: {{ pillar['pkgs']['iptables']}}
  service:
    - running
    - requre:
      - pkg: iptables

/etc/sysconfig/iptables:
  file.managed:
    - source: salt://iptables/iptables
    - user: root
    - group: root
    - mode: 644
    - requires:
      - pkg: iptables


