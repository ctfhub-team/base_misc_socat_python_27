# 基础镜像 Misc Socat Python 2.7

A docker image to hold misc challenges in ctf war

## Usage

Please check *.Dockerfile

## Example

TODO

## Env Vars

| Key     | Default Value | Description                 |
| ------- | ------------- | --------------------------- |
| FLAG    | (empty)       | Flag save in /home/ctf/flag |
| COMMAND | ./app.js      | Socat Exec Command          |
| EXTRA   | (empty)       | Socat Exec Command Extra    |

Maybe you can modify `/start.sh`
```bash
exec socat -v tcp-listen:10000,fork,reuseaddr,su=ctf EXEC:"$COMMAND"$EXTRA
```

## Files

- src 网站源码
    + app.py
    + requirements.txt **This is used in Dockerfile(require)**
    + ...etc
- Dockerfile
- docker-compose.yml


**Dockerfile**
```Dockerfile
FROM ctfhub/base_misc_socat_python_27

# ENV COMMAND=./app.py

COPY src/app.py /home/ctf/app.py
# COPY _files/flag.sh /flag.sh
```
