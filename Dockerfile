FROM markwatsonatx/pixiedust

RUN pip install --no-deps spark-df-profiling
COPY data /usr/notebooks/data
