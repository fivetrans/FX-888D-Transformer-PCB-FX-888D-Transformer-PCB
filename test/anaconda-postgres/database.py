# pylint: disable=line-too-long, missing-module-docstring, broad-except, consider-using-f-string

#-------------------------------------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
#-------------------------------------------------------------------------------------------------------------

#%%
import os
import sys
import traceback

import psycopg2

# Connect to the database
pg_user = os.getenv('POSTGRES_USER')
assert pg_user is not None, "POSTGRES_USER environment variable not set"

pg_password = os.getenv('POSTGRES_PASSWORD')
assert pg_password is not None, "POSTGRES_PASSWORD environment variable not set"

pg_db = os.getenv('POSTGRES_DB')
assert pg_db is not None, "POSTGRES_DB environment variable not set"

pg_host = os.getenv('POSTGRES_HOST')
assert pg_host is not None, "POSTGRES_HOST environment variable not set"

try:
    conn = psycopg2.connect("dbname='{pg_db}' user='{pg_user}' host='{pg_host}' password='{pg_password}'".format(
        pg_db=pg_db,
        pg_user=pg_user,
        pg_host=pg_host,
        pg_password=pg_password
    ))
except Exception:
    print("Unable to connect to t