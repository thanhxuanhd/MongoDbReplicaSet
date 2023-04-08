#!/bin/bash

mongosh <<EOF
var config = {
    _id : "myReplSet",
    members: [
      { _id : 0, host : "mongodb1:27017" },
      { _id : 1, host : "mongodb2:27017" },
      { _id : 2, host : "mongodb3:27017" }
    ]
};
rs.initiate(config);
rs.status();
EOF