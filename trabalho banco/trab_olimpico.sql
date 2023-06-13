create schema trab_olimpiadas2;
use trab_olimpiadas2;
CREATE TABLE athletes (
Name_atletas Varchar(150),
Noc_atletas Varchar(150),
Discipline_atletas Varchar(150)
);
select*from athletes;



CREATE TABLE coaches (
Name_coaches Varchar(150),
Noc_coaches Varchar(150),
Discipline_coaches Varchar(150),
event_coaches Varchar(150)
);

select*from coaches;

CREATE TABLE entriesGender (
disciplines_gender Varchar(150),
female_gender INT NULL,
male_gender INT NULL,
total_gender INT NULL
);

select*from entriesGender;




CREATE TABLE medals (
rank_medals INT NULL,
team_medals Varchar(150),
gold_medals INT  NULL,
silver_medals INT  NULL,
bronze_medals INT  NULL,
total_medals INT NULL,
rank_by_total INT NULL
);
select*from medals;

CREATE TABLE teams (
Name_teams Varchar(150),
Discipline_teams Varchar(150),
Noc_teams Varchar(150),
event_teams Varchar(150)
);
select*from teams;

-- 1. Quem são os técnicos (coaches) e atletas das equipes de Handball?
    
SELECT distinct coaches.Name_coaches, athletes.Name_atletas
FROM coaches
INNER JOIN teams ON coaches.Noc_coaches = teams.Noc_teams
INNER JOIN athletes ON teams.Noc_teams = athletes.Noc_atletas
WHERE teams.Discipline_teams = 'Handball';
-- 2. Quem são os técnicos (coaches) dos atletas da Austrália que receberam medalhas de Ouro?
-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada 

-- 3. Quais países tiveram mulheres conquistando medalhas de Ouro?
-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada 

-- 4. Quais atletas da Noruega receberam medalhas de Ouro ou Prata?
-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada 

-- 5. Quais atletas Brasileiros não receberam medalhas?
-- não é possivel pois em nenhum lugar consta quem ganhou medalha de ouro pois na tabela de medalas apenas 
-- fala os times e a quantidade de cada medalhas ganhas por cada 

