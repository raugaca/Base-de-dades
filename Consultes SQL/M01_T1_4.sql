SELECT Intermedia.person_id, movies.tb_person.person_name, MAX(NumRolesDistint) as MaxNumRole
FROM (select person_id, movie_id, COUNT(DISTINCT(role_id)) as NumRolesDistint
      from movies.tb_movie_person
      group by person_id, movie_id
      order by person_id ASC, NumRolesDistint DESC) as Intermedia
LEFT JOIN movies.tb_person ON Intermedia.person_id=movies.tb_person.person_id
GRoup by person_id
HAVING MaxNumRole>1;
      
 
