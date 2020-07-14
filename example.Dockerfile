FROM ctfhub/base_misc_socat_python_27

ENV COMMAND=./app.py

COPY src/app.py /home/ctf/app.py
