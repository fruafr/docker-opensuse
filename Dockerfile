FROM opensuse/leap:15.0

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

RUN zypper refresh
RUN zypper update

VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/bash"]
