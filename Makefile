.PHONY: install format lint test run

install:
	pip install -r requirements-dev.txt

format:
	black src/ tests/
	isort src/ tests/

lint:
	flake8 src/ tests/
	mypy src/ --ignore-missing-imports

test:
	pytest tests/ -v

run:
	python -m src.extract_references sample_pdfs/test_paper.pdf
