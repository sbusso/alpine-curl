# Alpine + Curl image

Used to test content of website via `curl`

```shell
docker run --rm -e SITE='https://example.com' -e CONTENT=test sbusso/alpine-curl; echo $?
```
