from setuptools import setup

setup(
    name="xonsh-direnv",
    version="0.1.0",
    license="MIT",
    url="https://github.com/74th/xonsh-direnv",
    description="direnv support for the xonsh shell",
    author="74th",
    author_email="site@74th.tech",
    packages=['xontrib'],
    package_dir={'xontrib': 'xontrib'},
    package_data={'xontrib': ['*.xsh']},
    zip_safe=False,
    classifiers=[
        "Development Status :: 4 - Beta",
        "Environment :: Console",
        "Environment :: Plugins",
        "Intended Audience :: End Users/Desktop",
        "License :: OSI Approved :: MIT License",
        'Programming Language :: Python',
        'Programming Language :: Python :: 3 :: Only',
    ]
)
