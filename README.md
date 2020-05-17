1. Iniciar container do SQL Server: 
  
    ```
        cd sqlserver
        docker-compose up -d
    ```
    
2. Criar banco de dados, tabela e inserir alguns dados:
  
    ```
        docker exec -it sqlserver_db_1 bash ./sqlserver/startup.sh
    ```

3. Iniciar os container do ELK na raiz do projeto:
   
    ```
       docker-compose up -d
    ```
