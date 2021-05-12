install_core_packages:
  pkg.installed:
    - pkgs:
      - nginx

nginx:
  service.running:
    - watch:
      - pkg: install_core_packages
  pkg.latest:
    - refresh: True
    - enable: True
