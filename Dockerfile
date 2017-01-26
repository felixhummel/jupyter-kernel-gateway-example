# https://jupyter-kernel-gateway.readthedocs.io/en/latest/getting-started.html
FROM jupyter/minimal-notebook

RUN pip install jupyter_kernel_gateway

EXPOSE 8888

ENTRYPOINT ["tini", "--", "jupyter", "kernelgateway", "--KernelGatewayApp.api=notebook-http", "--KernelGatewayApp.ip=0.0.0.0"]

