FROM opensuse/archive:42.3

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-15"

ENV container=docker

# Refresh and update packages
RUN zypper rr 'OSS Update'
RUN zypper ar http://download.opensuse.org/update/leap/42.3/oss/ 'OSS Update'
RUN rpm --import http://download.opensuse.org/update/leap/42.3/oss/repodata/repomd.xml.asc
RUN zypper --gpg-auto-import-keys ref
RUN zypper -n -G update

VOLUME ["/sys/fs/cgroup"]

CMD ["/bin/bash"]
