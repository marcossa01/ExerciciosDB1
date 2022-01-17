SQL 3 - MOVIES DB

1 - Explique o conceito de normalização e para que é usado:
    A normalização é o processo de organização de dados em um banco de dados, ele consiste em eliminar redudâncias ou inconsistências, completando dados por meio
    de uma série de regras que atualizam a informação, protegendo sua integridade e favorecendo sua interpretação, para que seja mais fácil de consultar e mais
    útil para quem o gerencia.

 2 - Adicione um filme a tábela de filmes:
    INSERT INTO movies_db.movies (created_at, updated_at, title, rating, awards, release_date, length) VALUES (NULL, NULL, 'Filme adicionado por Marcos Sá', 10.0, 9, '2022/01/12 00:00:00', 220);

3 - Adicione um gênero a tabela de Gêneros
    INSERT INTO movies_db.genres(created_at, updated_at, name, ranking, active) VALUES('2021/01/12', NULL, 'Genero Novo', 13, 1);

4 - Associe o filme do Ex. 2 ao gênero criado no Ex.3:
    UPDATE movies_db.movies set genre_id = 14 WHERE id = 22;

5 - Modifique a tabela de atores para que pelo menos um ator tenha como favorito o filme adicionado no Ex. 2.
    UPDATE movies_db.actors SET favorite_movie_id = 22 WHERE id > 45;

6 - Crie uma cópia temporária da tabela de filmes.
    CREATE TEMPORARY TABLE tb_temp_movies SELECT * FROM movies_db.movies;

7 - Elimine desta tabela temporária todos os filmes que ganharammenos de 5 prêmios
    DELETE FROM temp_movies WHERE awards < 5;

8 - Obtenha a lista de todos os gêneros que possuem pelo menos um filme.
    SELECT DISTINCT g.name
    FROM genres g JOIN movies m ON m.genre_id = g.id;

9 - Obtenha a lista de atores cujo filme favorito ganhou mais de 3 prêmios.
    SELECT a.first_name, a.last_name, m.title
    FROM actors a JOIN movies m ON (m.id = a.favorite_movie_id)
    WHERE m.awards > 3;

10 - Use o plano de execução para analisar as consultas nos Ex 6 e 7.
    EXPLAIN temp_movies;
    EXPLAIN DELETE FROM temp_movies WHERE awards < 5;

11 - O que são os índices? Para que servem?
    É utilizado para otimizar consultas no MYSQL. Melhora o acesso aos dados, fornece um caminho mais direto para os dados armazenados assim evita a execuçãp de varreduras completas dos dados em uma tabela.

12 - Crie um índice sobre o nome na tabela de filmes.
    CREATE INDEX db_title_movies ON movies(title);

13 - Verifique se o índice foi criado corretamente:
    SHOW INDEX FROM movies;
