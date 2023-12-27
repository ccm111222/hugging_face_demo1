install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --voc=hello --cov=greeting \
		--cov=smath --cov=web tests
	python -m pytest --nbval notebook.ipynb #tests our jupyter notebook

debug:
	python -m pytest -vv ---pdb #Debugger is invoked

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4