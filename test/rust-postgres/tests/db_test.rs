/*--------------------------------------------------------------------------------------------------------------
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See https://go.microsoft.com/fwlink/?linkid=2090316 for license information.
 *-------------------------------------------------------------------------------------------------------------*/

use std::{env, net::TcpStream};
extern crate postgres;
use postgres::{Client, NoTls};

fn getenv(name: &str) -> String {
    let val = match env::var(name) {
        Ok(val) => val,
        Err(err) => panic!("Error {} {:?}", name, err),
    };
   