
staff:
  group:
    - present
    - gid: 500


root:
  user:
    - present
    - password: '$6$aasdfASDF$jP6.3QMiPgO4ZzcEe.uKwiS1CzhnGYsml.kA1MwSGB4XYEHswa1kOE4pfmBOMBMPF30ljf2JsS3.NWH8vs6b71'

{# python -c "import crypt; print crypt.crypt('changeme','\$6\$aasdfASDF');" #}
