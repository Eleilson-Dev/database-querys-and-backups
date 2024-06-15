# Comandos úteis com Docker e MySQL;

1.  Criar um backup-dump de um banco de dados completo no MySQL com Docker:
    sudo docker exec -i <nome ou ID do contêiner> mysqldump -u <usuário> -p --databases <nome do banco de dados> > backup_cadastro.sql

    Exemplo:
    sudo docker exec -i mysql_container mysqldump -u root -p my_database > backup_cadastro.sql

2.  Copiar um arquivo de backup para a pasta /tmp dentro de um contêiner Docker:
    sudo docker cp <caminho para o backup> <nome ou ID do contêiner>:/tmp

    OBS: esse comando deve ser executado no terminal fora do conteiner pra efetuar a copia

    Exemplo:
    sudo docker cp /home/mxtdev/Documentos/GitHub/database-querys-and-backups/Backups/backup_mariaDB.sql mysql_db:/tmp

3.  Acessar o bash de um contêiner Docker que contém MySQL:
    sudo docker exec -it <nome ou ID do contêiner> bash

4.  Acessar o MySQL e restaurar a database dentro do contêiner:
    mysql -u root -p < backup_mariaDB.sql

5.  Remover um arquivo de backup dentro do contêiner na pasta /tmp:
    sudo docker exec -it <nome ou ID do contêiner> bash
    cd /tmp
    rm backup.sql
