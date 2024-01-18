#!/usr/bin/env bash
sftp -o NoHostAuthenticationForLocalhost=yes -P 2222 foo@localhost