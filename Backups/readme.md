# Comandos úteis com Docker e MySQL;

1.  Criar um backup-dump de uma tabela no MySQL com Docker:
    sudo docker exec -i <nome ou ID do contêiner> mysqldump -u <usuário> -p <nome do banco de dados> <nome da tabela> > backup.sql

    Exemplo:
    sudo docker exec -i mysql_container mysqldump -u root -p my_database my_table > backup.sql

2.  Criar um backup-dump de um banco de dados completo no MySQL com Docker:
    sudo docker exec -i <nome ou ID do contêiner> mysqldump -u <usuário> -p <nome do banco de dados> > backup_cadastro.sql

    Exemplo:
    sudo docker exec -i mysql_container mysqldump -u root -p my_database > backup_cadastro.sql

3.  Copiar um arquivo de backup para a pasta /tmp dentro de um contêiner Docker:
    docker cp <caminho para o backup> <nome ou ID do contêiner>:/tmp

    OBS: esse comando deve ser executado no terminal fora do conteiner pra efetuar a copia

    Exemplo:
    sudo docker cp /home/mxtdev/Documentos/GitHub/database-querys-and-backups/Backups/backup_mariaDB.sql mysql_db:/tmp

4.  Acessar o bash de um contêiner Docker que contém MySQL:
    sudo docker exec -it <nome ou ID do contêiner> bash

5.  Acessar o MySQL dentro do contêiner:
    mysql -u root -p

6.  Criar um novo banco de dados no MySQL:
    CREATE DATABASE IF NOT EXISTS database_name

7.  Selecionar um banco de dados para uso:
    USE database_name

8.  Restaurar um banco de dados MySQL a partir de um arquivo de backup dentro do contêiner:
    SOURCE /tmp/backup_mariaDB.sql;

9.  Remover um arquivo de backup dentro do contêiner na pasta /tmp:
    sudo docker exec -it <nome ou ID do contêiner> bash
    cd /tmp
    rm backup.sql
