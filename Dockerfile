FROM python:3.10

WORKDIR /app/

# install submodules
COPY src/my-lib/pyproject.toml ./src/my-lib/
RUN pip install src/my-lib/

# install main package
COPY pyproject.toml ./
RUN pip install .

COPY . .
RUN pip install ./src/my-lib && pip install .

ENTRYPOINT [ "python", "./src/main.py" ]
