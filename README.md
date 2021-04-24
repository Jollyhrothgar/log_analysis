# Introduction

This project is for decompressing and parsing authentication logs so that I can
create a dashboard around them.

*   `read_and_concatenate_logs.sh`
    *   Reads all log flavored like `/var/log/auth*`, unzipping any `.gz` logs
		    and appends to `all_auth_logs.txt`

This branch is forked from master because a change in my ssh config removed all
password authentication. Therefore that code no longer produces anythig of
value.
