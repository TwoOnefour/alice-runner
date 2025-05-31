#!/bin/bash

ssh-keygen -l -f private_key.pem || ssh-keygen -p -m PEM -f private_key.pem

