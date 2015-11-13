rump-nginx-test-minimal
=======================

This is a proof-of-concept to show how minimal a rump kernel docker image can
get. Files were pulled from marklee77/rump-nginx-test, which is based on
justincormack/rump-nginx-test.

    docker run -d --cap-add NET_ADMIN -P marklee77/rump-nginx-test-minimal
