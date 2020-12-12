FROM python:3.8-slim

#Aggiorno apt
RUN apt update

#Settare la Default directory dove verra installata la applicazione
WORKDIR /home

# copy over our requirements.txt file
COPY requirements.txt requirements.txt

#Creare ambiente Virtuale
RUN python3 -m venv /home/venv
RUN . /home/venv/bin/activate
# install required python packages
RUN pip install -r requirements.txt

# copy over our app code
COPY app ./app

#Configurare la porta che container utilizzerà per il suo server
EXPOSE 5000
# Definisce il comando di default da eseguire quando avviato il container
CMD ["./app/main.py"]
ENTRYPOINT ["python"]