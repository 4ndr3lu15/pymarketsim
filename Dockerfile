FROM python:3.11

WORKDIR /ws

COPY ./requirements.txt /ws/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /ws/requirements.txt

COPY ./marketsim /ws/marketsim

# Install JupyterLab if it's not included in the image
RUN pip install jupyterlab ipywidgets

# Expose the port for JupyterLab
EXPOSE 8888

# Start JupyterLab by default
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]