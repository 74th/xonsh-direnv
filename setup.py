from setuptools import setup

with open("README.rst", "r") as fh:
    long_description = fh.read()

setup(
    name="xonsh-direnv",
    version="1.6.5",
    license="MIT",
    url="https://github.com/74th/xonsh-direnv",
    description="direnv support for the xonsh shell",
    long_description=long_description,
    author="74th",
    author_email="site@74th.tech",
    packages=['xontrib'],
    package_dir={'xontrib': 'xontrib'},
    package_data={'xontrib': ['*.xsh']},
    zip_safe=False,
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Environment :: Console",
        "Environment :: Plugins",
        "Intended Audience :: End Users/Desktop",
        "License :: OSI Approved :: MIT License",
        'Programming Language :: Python',
        'Programming Language :: Python :: 3 :: Only',
    ]
)
