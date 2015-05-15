Examples for RVALug presentation on Saltstack

===

## Example Highstate

```
$ salt minion01 state.highstate

minion01:
----------
          ID: bash
    Function: pkg.latest
      Result: True
     Comment: Package bash is already up-to-date.
     Started: 15:04:54.494469
    Duration: 6385.268 ms
     Changes:   
----------
          ID: vim
    Function: pkg.installed
      Result: True
     Comment: Package vim is already installed.
     Started: 15:05:00.880523
    Duration: 7.048 ms
     Changes:   
----------
          ID: staff
    Function: group.present
      Result: True
     Comment: Group staff is present and up to date
     Started: 15:05:00.977228
    Duration: 0.906 ms
     Changes:   
----------
          ID: root
    Function: user.present
      Result: True
     Comment: User root is present and up to date
     Started: 15:05:00.980032
    Duration: 1.518 ms
     Changes:   
----------
          ID: baduser
    Function: user.absent
      Result: True
     Comment: User baduser is not present
     Started: 15:05:00.983371
    Duration: 0.404 ms
     Changes:   
----------
          ID: demo
    Function: group.present
      Result: True
     Comment: Group demo is present and up to date
     Started: 15:05:00.985482
    Duration: 0.43 ms
     Changes:   
----------
          ID: demo
    Function: user.present
      Result: True
     Comment: User demo is present and up to date
     Started: 15:05:00.988359
    Duration: 1.774 ms
     Changes:   
----------
          ID: demo
    Function: ssh_auth.present
      Result: True
     Comment: The authorized host key demo is already present for user demo
     Started: 15:05:00.992022
    Duration: 2.702 ms
     Changes:   
----------
          ID: sshd
    Function: pkg.installed
        Name: ssh
      Result: True
     Comment: Package ssh is already installed.
     Started: 15:05:00.994842
    Duration: 0.432 ms
     Changes:   
----------
          ID: /etc/ssh/sshd_config
    Function: file.managed
      Result: True
     Comment: File /etc/ssh/sshd_config is in the correct state
     Started: 15:05:00.999394
    Duration: 11.295 ms
     Changes:   
----------
          ID: sshd
    Function: service.running
      Result: True
     Comment: Service sshd is already enabled, and is in the desired state
     Started: 15:05:01.012736
    Duration: 683.33 ms
     Changes:   
----------
          ID: httpd
    Function: pkg.installed
        Name: apache2
      Result: True
     Comment: Package apache2 is already installed.
     Started: 15:05:01.696956
    Duration: 3.017 ms
     Changes:   
----------
          ID: httpd.conf
    Function: file.managed
        Name: /etc/apache2/sites-enabled/000-default.conf
      Result: True
     Comment: File /etc/apache2/sites-enabled/000-default.conf is in the correct state
     Started: 15:05:01.706360
    Duration: 12.014 ms
     Changes:   
----------
          ID: httpd
    Function: service.running
        Name: apache2
      Result: True
     Comment: Service apache2 has been enabled, and is in the desired state
     Started: 15:05:01.720466
    Duration: 1625.237 ms
     Changes:   
              ----------
              apache2:
                  True

Summary
-------------
Succeeded: 14 (changed=1)
Failed:     0
-------------
Total states run:     14
```
