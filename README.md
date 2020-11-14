# PowerDNS Authoritative Server

This is another Dockerfile to build PowerDNS Authoritative Server.

## Architecture
- ARM64/aarch64

## Build
```
docker build --build-arg <version> -t pdns:<version> .
```

## Usage

```
docker run -p 5353:53 pdns:<version> <powerdns args>
```
