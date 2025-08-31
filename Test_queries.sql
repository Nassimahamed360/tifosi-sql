use tifosi;
-- liste des noms de focaccias par ordre alphabetique --
select nom from focaccia order by nom asc;
--  Nombre totald'ingrédients--
select count(*) as total_ingredients from ingredient;
--  prix moyen des focaccias --
select avg (prix) as prix_moyen from focaccia;
-- Liste des boissons avec leur marque--
select b.nom as boisson, m.nom as marque from boisson b join marque m on b.id_marque = m.id_marque order by b.nom asc ;
--  Listedes ingrédients pour une raclaccia--
select i.nom
from focaccia f join focaccia_ingredient fi on f.id_focaccia = fi.id_focaccia
join ingredient i on fi.id_ingredient = i.id_ingredient where f.nom = 'Raclaccia';
-- 6 Nom et nombre d'ingrédients pour chaque focaccia --
select f.nom, count(fi.id_ingredient) as nb_ingredients from focaccia f 
left join focaccia_ingredient fi on f.id_focaccia = fi.id_focaccia group by f.id_focaccia;
-- 7  focaccia qui a le plus d'ingredients --
select f.nom , count(fi.id_ingredient) as nb_ingredients
from focaccia f
join focaccia_ingredient fi on f.id_focaccia = fi.id_focaccia
group by f.id_focaccia order by nb_ingredients desc limit 1;
-- 8  focaccia qui contiennent de l'ail--
select f.nom 
from focaccia f 
join focaccia_ingredient fi on f.id_focaccia = fi.id_focaccia
join ingredient i on fi.id_ingredient = i.id_ingredient
where i.nom = 'Ail';
-- 9 ingrédients inutilisés  --
select i.nom
 from ingredient i 
 left join focaccia_ingredient fi on i.id_ingredient = fi.id_ingredient
 where fi.id_focaccia is null;
 -- 10 focaccia qui n'ont pas de champignons --
 select f.nom 
 from focaccia f
 where f.id_focaccia not in ( select fi.id_focaccia
  from focaccia_ingredient fi 
  join ingredient i on fi.id_ingredient = I.id_ingredient
  where i.nom ='champignons' );
 

 