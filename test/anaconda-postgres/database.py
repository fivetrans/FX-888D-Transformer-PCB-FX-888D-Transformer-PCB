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

pg_pas