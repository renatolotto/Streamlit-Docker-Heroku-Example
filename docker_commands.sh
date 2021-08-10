# Arquivo com comandos e instruções para buildar e rodar a imagem docker local

# Criando uma imagem chamada streamlit-tera
docker build -t NOME .

# Listandos todas as imagens
docker images

# Removendo uma imagem já criada
docker rmi NOME --force

# Rodando a imagem  e gera um container na porta 8501
docker run -p 8501:8501 -it NOME 

# Listando os containers que estão rodando
docker ps

# OUTROS comandos:

# Iniciar um container
docker start my_container

# Parar um container
docker stop my_container

# Limpando o cache (containers já executados)
docker system prune