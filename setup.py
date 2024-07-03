from setuptools import setup

with open("README.rst", "r") as fh:
    long_description = fh.read()

setup(
    name="xonsh-direnv",
    version="1.7.0",
    license="MIT",
    url="https://github.com/greg-hellings/xonsh-direnv",
    description="direnv support for the xonsh shell",
    long_description=long_description,
    author="Greg Hellings",
    author_email="greg@thehellings.com",
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
