# jupyter-ds
Docker Setup for Interactive Data Science; The Image contains Anaconda, Jupyter, Java8, PixieDust, Spark, Scala 2.11.8, Dataframe Profiling; with example notebook combining all together.

Anaconda Version ```4.0.0```; all supported packages https://docs.continuum.io/anaconda/packages/pkg-docs

The image extending the ```pixiedust``` docker image https://github.com/markwatsonatx/Dockerfiles/blob/master/pixiedust-python35-1.0.5/Dockerfile. More information on the project and usage: https://ibm-watson-data-lab.github.io/pixiedust/use.html

The Dataframe profiling package source: https://github.com/julioasotodv/spark-df-profiling

Building the image: ``` docker build -t ${YOUR_TAG} .```
Running the image: ```docker run -p 8888:8888 -v ${PATH_TO_YOUR_DATA_DIR}:/usr/notebooks/shared -d ${YOUR_TAG}```. 
  - ${PATH_TO_YOUR_DATA_DIR} will be mounted on /usr/notebooks/shared in the container where u can easily access your data from spark
  - The jupyter UI will be available on ```localhost:8888```. The default directory will contain PixieDust Tutorial examples, and a data directory with a sample notebook using PixieDust with the Dataframe profiling package. The shared directory shall contain all the user files which are mounted from ${PATH_TO_YOUR_DATA_DIR}
