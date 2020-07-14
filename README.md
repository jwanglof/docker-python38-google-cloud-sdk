Python 3.8 -and Google Cloud SDK-
=============================

Docker image with Alpine Linux, Python 3.8, -Google Cloud SDK-, and tox.

Example commands
=

Run with local path mounted
==
% docker build --tag localpython38:latest .
% docker run -t -i --mount type=bind,src=/absolute/path/to/build,dst=/builds localpython38
