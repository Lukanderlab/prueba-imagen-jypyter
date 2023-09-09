# Usamos la imagen oficial de Python 3.10 como punto de partida
FROM python:3.10

# Instalamos las bibliotecas comunes que necesitas, puedes agregar más según tus necesidades
RUN pip install numpy pandas matplotlib seaborn scikit-learn jupyterlab

# Creamos tres directorios separados para los entornos de JupyterLab
RUN mkdir /jupyter1 /jupyter2 /jupyter3

# Configuramos los puertos para cada entorno de JupyterLab
EXPOSE 8888 8889 8890

# Ejecutamos tres instancias de JupyterLab en diferentes puertos y directorios
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--notebook-dir=/jupyter1", "--allow-root", "--LabApp.token=''"]
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8889", "--no-browser", "--notebook-dir=/jupyter2", "--allow-root", "--LabApp.token=''"]
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8890", "--no-browser", "--notebook-dir=/jupyter3", "--allow-root", "--LabApp.token=''"]
