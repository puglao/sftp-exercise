#!/usr/bin/env bash
sftp -o NoHostAuthenticationForLocalhost=yes -P 2223 bar@localhost