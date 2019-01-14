from invoke import task

@task
def upload_test(c):
    c.run("python3 setup.py sdist bdist_wheel")
    c.run("twine upload --repository-url https://test.pypi.org/legacy/ dist/*")

@task
def upload_prod(c):
    c.run("python3 setup.py sdist bdist_wheel")
    c.run("twine upload dist/*")