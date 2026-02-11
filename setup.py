from setuptools import setup, find_packages

setup(
    name='jarvis-ai-agent',
    version='0.1.0',
    author='henryokoth335-del',
    author_email='your_email@example.com',  # Replace with your email
    description='A description of your package',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/henryokoth335-del/jarvis-ai-agent',
    packages=find_packages(),
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)