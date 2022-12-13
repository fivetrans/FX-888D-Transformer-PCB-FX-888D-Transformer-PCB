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
    assert!(!val.is_empty());
    val
}

#[test]
fn test_ping_database() {
    let host = getenv("POSTGRES_HOSTNAME");
    let port = getenv("POSTGRES_PORT");
    let _ = TcpStream::connect(format!("{}:{}", host, port)).expect("Failed to connect");
    println!("Ping database succeed");
}

#[test]
fn test_connection_query_database() {
    let h