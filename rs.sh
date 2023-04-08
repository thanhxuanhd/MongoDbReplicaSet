#!/bin/bash

mongo <<EOF
var config = {
    "_id": "replicaSet",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "mongodb1:27017",
        },
        {
            "_id": 2,
            "host": "mongodb2:27017",
        },
        {
            "_id": 3,
            "host": "mongodb3:27017",
        }
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF