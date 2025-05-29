# aem-admin-key-gen

## Pre-requisite
Admin privileges are required to generate the API keys.

## Usage

```
$ chmod +x create_api_key.sh
$ ./create_api_key.sh your-site-name your-auth-token
```

For example, to generate Admin API key for adobecom/bacom:
```
./create_api_key.sh bacom OasdrSDAFksaldasd...
```

Auth Token can be extracted from one of the hlx endpoint calls made when you login to the AEM sidekick.

## Sample response

```
HTTP/2 200 
content-type: application/json
cache-control: no-store, private, must-revalidate
x-invocation-id: c0f3c3a9-478a-4183-8cee-ab00fd750738
accept-ranges: bytes
date: Thu, 29 May 2025 17:13:45 GMT
via: 1.1 varnish
x-served-by: cache-sjc10028-SJC
x-cache: MISS
x-cache-hits: 0
x-timer: S1748538823.968019,VS0,VE2464
strict-transport-security: max-age=31557600
x-ratelimit-limit: 10
x-ratelimit-rate: 0.100
content-length: 1070

{
  "description": "API key for development environment",
  "roles": [
    "publish"
  ],
  "id": "llQtNQCkm1.....aoiwWEasd",
  "subject": "adobecom/homepage-pink",
  "expiration": "2026-05-29T17:13:43.000Z",
  "created": "2025-05-29T17:13:43.465Z",
  "value": "eyJhbGciOiJSUzI1NiIsImtpZCI6Ij....6VCh2AejjHAe2Zn3t06Rbptglza3W1RTKMEpCi2fRXMHfmFAPafCIq5WGag"
}
```
