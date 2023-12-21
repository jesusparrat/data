SELECT actor, sum(bond_actor_salary) as salario_Bond

from jamesbond
WHERE bond_actor_salary != 'NA'
GROUP by 1
ORDER by salario_Bond DESC