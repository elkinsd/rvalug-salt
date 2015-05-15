base:
  '*':
    - base
    - users

  'salt.home':
    - ssh.server

  'minion*':
    - ssh.server
    - httpd.server
