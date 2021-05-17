FROM python:3.9.1
ADD . /python-flask
WORKDIR /python-flask
RUN pip install pandas scikit-learn flask gunicorn joblib matplotlib seaborn numpy cufflinks
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]