# Iniciando com Docker - Desafio Go

Este desafio consiste em:

- Publicar uma imagem: `sidartasilva/desafio-1-docker-fullcycle` no _Docker Hub_;

- Ao executar o comando a seguir, é exibida a mensagem: `Full Cycle Rocks!` no terminal;

```
docker run --rm sidartasilva/desafio-1-docker-fullcycle
```

- A aplicação contida na imagem é desenvolvida em _Golang_. Consiste em apenas realizar o print da mensagem.

- O processo de _Multi-stage Build_ aplicado pelo _Docker_ otimiza o tamanho da imagem para menos de **2MB**.

> N.T.: Sem o uso de _Multi-stage Build_, o tamanho da imagem pode chegar a **~1GB**.
