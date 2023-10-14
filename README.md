# OpenSuse Leap - Base distributions

These containers are built from OpenSuse Leap base with active zipper sources (normal or archive). No additional package is installed.

The Dockerfiles are available in the [fruafr/docker-opensuse Github repository](https://github.com/fruafr/docker-opensuse)

The resulting docker containers are available in the [fruafr/opensuse Docker Hub](https://hub.docker.com/repository/docker/fruafr/opensuse)

## Current

This repository has multiple branches that relate to OpenSuse Leap versions.

|OpenSuse Version    |Docker image tag                       |Current Version |Repo Branch   |
|------------------|---------------------------------------|----------------|--------------|
|latest            | `docker pull fruafr/opensuse:latest` | 15.4 | latest |

## Versions History (Long Term Support - LTS)

### Supported versions

|Year Released |OpenSuse Version |Docker image tag                  |End of Life               |Repo Branch       |
|--------------|---------------|--------------|----------------------------------|--------------------------|
| 2022 | 15.4 | `docker pull fruafr/opensuse:leap-15.4` | ? | 15.4 |
| 2018 | 15 | `docker pull fruafr/opensuse:leap-15` | 15.5 | 15 |

### Obsolete versions 

|Year Released |OpenSuse Version |Docker image tag                    |End of Life                      |Repo Branch       |
|--------------|---------------|------------------------------------|--------------------------|------------------|
| 2018 | 15.0 | `docker pull fruafr/opensuse:leap-15.0` | 2019-12 | 15.0 |
| 2017 | 42.3 | `docker pull fruafr/opensuse:leap-42.3` | 2019-07 | 42.3 |
| 2014 | 13.2 | `docker pull fruafr/opensuse:leap-13.2`| 2017-01 | 13.2 |

For 42.3, when installing packages, the gpg checks must be bypassed in zypper due to the 'OSS Update' repository with `zypper --no-gpg-checks ref`.

The containers are generated on Ubuntu.

## Pull strategy

The different branches are **not** merged, they live as individual branches.

## Manually starting

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  fruafr/opensuse
```

## Official Distro Release Information
- To pull the latest official docker version : `docker pull opensuse/leap:latest`
- [OpenSuse - Leap - DockerHub](https://hub.docker.com/r/opensuse/leap)
- [OpenSuse - Archive - Docker Hub](https://hub.docker.com/r/opensuse/archive)
- [OpenSuse - Lifetime](https://en.opensuse.org/Lifetime)

### Current

|OpenSuse Version    |Docker image tag                |Current version |
|------------------|--------------------------------|----------------|
|latest            | `docker pull opensuse/leap:latest` | 15.4 |

### Versions History (Long Term Support - LTS)

#### Supported versions

|Year Released |OpenSuse Version |Docker image tag                  |End of Life               |Repo Branch       |
|--------------|---------------|--------------|----------------------------------|--------------------------|
| 2022 | 15.4 | `docker pull opensuse/leap:15.4` | ? | 15.4 |
| 2018 | 15 | `docker pull opensuse/leap:15` | 15.5 | 15 |

#### Obsolete versions 

Some obsolete versions :

|Year Released |OpenSuse Version |Docker image tag                    |End of Life                      |Repo Branch       |
|--------------|---------------|------------------------------------|--------------------------|------------------|
| 2018 | 15.0 | `docker pull opensuse/leap:15.0` | 2019-12 | 15.0 |
| 2017 | 42.3 | `docker pull opensuse/leap:42.3` | 2019-07 | 42.3 |
| 2014 | 13.2 | `docker pull opensuse/archive:13.2`| 2017-01 | 13.2 |

----
Updated: 2023-10-14
