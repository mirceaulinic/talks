{% set ntp_peers = pillar.get('ntp.peers', []) -%}
{% set ntp_servers = pillar.get('ntp.servers', []) -%}

update_my_ntp_config:
  netntp.managed:
    - peers: {{ ntp_peers | json() }}
    - servers: {{ ntp_servers | json() }}
