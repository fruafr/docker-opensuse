FROM opensuse/archive:42.3

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

# Refresh and update packages
RUN zypper rr 'OSS Update'
RUN zypper --gpg-auto-import-keys ref
RUN zypper -n update

RUN zypper ar http://download.opensuse.org/update/leap/42.3/oss/ 'OSS Update'
RUN yes | LC_ALL=en_US.UTF-8 zypper --gpg-auto-import-keys ref
RUN zypper -n update

VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/bash"]
