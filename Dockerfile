FROM markwatsonatx/pixiedust

RUN pip install --no-deps spark-df-profiling; pip install --upgrade pixiedust


COPY data /usr/notebooks/data
