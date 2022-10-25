/*--------------------------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
 *-------------------------------------------------------------------------------------------------------------*/

'use strict';

const express = require('express');
const MongoClient = require('mongodb').MongoClient;

// Constants
const PORT = 3000;
const MONGO_URL = 'mongodb://localhost:27017';
const DB_NAME = 'test-project';
const HOST = '0.0.0.0';

(async function() {
	// Use connect to mongo server
	const client = new MongoClient(MONGO_URL, { useUnifie