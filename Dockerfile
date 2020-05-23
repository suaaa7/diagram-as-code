FROM python:3.7-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    graphviz \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools \
  && pip install matplotlib jupyter diagrams

CMD ["jupyter", "notebook", "--allow-root"]
