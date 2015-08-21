elasticsearch_repo:
  pkgrepo.managed:
    - humanname: Elasticsearch Official Debian Repository
    - name: deb http://packages.elastic.co/elasticsearch/1.7/debian stable main
    - dist: stable
    - key_url: salt://elasticsearch/GPG-KEY-elasticsearch
    - file: /etc/apt/sources.list.d/elasticsearch-1.7.list

openjdk-7-jre:
  pkg.installed:
    - pkgs:
      - openjdk-7-jre

elasticsearch:
  pkg:
    - installed
    - require:
      - pkg: openjdk-7-jre
  service:
    - running
    - enable: True
    - require:
      - pkg: elasticsearch
      - file: /etc/elasticsearch/elasticsearch.yml

/etc/elasticsearch/elasticsearch.yml:
  file:
    - managed
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - source: salt://elasticsearch/elasticsearch.yml



