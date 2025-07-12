TESTS_DIR = tests
SRC_DIR = src/pyharborcli

test:
	pytest $(TESTS_DIR) --cov-fail-under=100 -v -s --tb=short --strict-markers -n auto --cov=$(SRC_DIR) --cov-report=term-missing

lint:
	ruff check $(SRC_DIR)

format:
	ruff check $(SRC_DIR) --fix
	ruff format $(SRC_DIR)
	black $(SRC_DIR)
