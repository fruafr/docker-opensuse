FROM opensuse/archive:42.3

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

# Refresh and update packages
RUN zypper --gpg-auto-import-keys ref
RUN zypper -n refresh -f
RUN zypper -n -G update

VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/bash"]
