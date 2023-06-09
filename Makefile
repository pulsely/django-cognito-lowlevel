.DEFAULT_GOAL := build

build:
	cd dist; rm * ; cd .. ; python -m build

test_upload:
	twine upload --repository testpypi dist/*

upload:
	twine upload dist/*
