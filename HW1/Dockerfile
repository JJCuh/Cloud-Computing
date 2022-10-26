FROM ubuntu:20.04
RUN apt-get update \
	&& apt-get install sysbench \
	&& sysbench –test=cpu –time=15 –cpu-max-prime=10000 run \
&& sysbench –test=fileio –file-total-size=1G –file-test-mode=rndrw prepare
&& sysbench –test=fileio –file-total-size=1G –file-test-mode=rndrw –time=15 –max-requests=0 run \
&& sysbench –test=fileio –file-total-size=1G –file-test-mode=rndrw cleanup \
&& sync
