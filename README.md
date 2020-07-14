Python 3.8 (without Google Cloud SDK)
=============================

Docker image with Alpine Linux, Python 3.8, and tox.

Commented code in Dockerfile to support Google Cloud SDK.

Example commands
=

Run with local path mounted
==
`% docker build --tag localpython38:latest .`

`% docker run -t -i --mount type=bind,src=/absolute/path/to/build,dst=/builds localpython38`
