=================
Salt Elasticsearch
=================

A Salt formula for installing / configuring Elasticsearch.


Instructions
============

Run the following commands in a terminal on your Salt Master.

.. code-block:: bash

    git clone https://github.com/knehring/salt-elasticsearch.git /srv/salt/

Add the formula to your top.sls and run the following on your minion.

.. code-block:: bash
    sudo salt-call state.highstate

