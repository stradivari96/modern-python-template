.PHONY: download-poetry
download-poetry:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -

.PHONY: install
install:
	poetry install
	poetry run pre-commit install

.PHONY: test
test:
	poetry run pytest --cov=my_package --cov-fail-under=80 --cov-report xml
