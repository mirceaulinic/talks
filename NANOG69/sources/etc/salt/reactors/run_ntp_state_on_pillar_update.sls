run_ntp_state:
  local.state.sls:
    - tgt: {{ data['id'] }}
    - arg:
      - router.ntp
