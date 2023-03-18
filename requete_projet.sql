use LEGISLATIVES; 

-- REQUETES INTERROGATIONS SIMPLES --

-- distinct car ils peuvent etre dans différents bureaux / europeennes 2009 --
SELECT distinct Nom, Prenom from Candidat inner join votes on candidat.numdepot = votes.ref_candidat where Ref_Election = 1; 

-- legslatives 2012 --
SELECT *from Bureau inner join votes on bureau.num_bureau = votes.ref_bureau where ref_election = 3;

-- nb de candidats pour les régionales 2eme tour --
select count(distinct numdepot) as "nombre de Candidats"  from Candidat inner join votes on candidat.numdepot = votes.ref_candidat where Ref_election = 2; 

-- nb de bureaux pour l'election legislatives 2007 --
select count(distinct num_bureau) as "nombre de Bureaux" from bureau inner join votes on bureau.num_bureau = votes.ref_bureau where ref_election = 4;

select *from votes inner join bureau on votes.ref_bureau = bureau.num_bureau where CP = 75120;

select count(distinct ref_candidat) as "nombre de candidats", libelle_scrutin  from votes inner join election on ref_election = id_scrutin group by(libelle_scrutin);

select sum(nb_votes) as "nombre de votes", libelle_scrutin from votes inner join election on ref_election = id_scrutin group by(libelle_scrutin);

select sum(nb_votes) as "nombre de votes", num_bureau from votes inner join bureau on ref_bureau = num_bureau group by(num_bureau) order by sum(nb_votes) desc;

select sum(nb_votes) as "nombre de votes", Nom, Prenom from votes inner join candidat on ref_candidat = numdepot group by(numdepot) order by sum(nb_votes) desc;