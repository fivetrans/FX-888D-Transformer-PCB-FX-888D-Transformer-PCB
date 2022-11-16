/*--------------------------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
 *-------------------------------------------------------------------------------------------------------------*/

 'use strict';

const express = require('express');
const promise = require('bluebird');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';
const cn = {
	host: 'localhost', // host of db container
	port: 5432, // 5432 is the default;
	database: 'postgres', // database name
	user: 'postgres', // database user name
	password: 'postgres' // database password
};
const initOptions = {
	promiseLib: