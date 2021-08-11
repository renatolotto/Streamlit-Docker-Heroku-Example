# criar app no site do heroku primeiro

#acessar conta do heroku
heroku login

#acessar Container Registry ou repositório de imagens
heroku container:login

#atribuir imagem criada ao Container Registry
docker tag NOMEDAIMAGEM registry.heroku.com/NOMEDOAPP/web

#carregar a imagem e criar o container
docker push registry.heroku.com/NOMEDOAPP/web

#Aprovar alterações
heroku container:release web --app NOMEDOAPP

#Abrir o app no navegador
heroku open --app NOMEDOAPP

# OUTROS COMANDOS

# Deletar a imagem local criada para ser enviada ao reistry do heroku
docker rmi --f registry.heroku.com/[NOME DO APP]/web

# Verificar o log da aplicação no heroku
heroku logs --tail