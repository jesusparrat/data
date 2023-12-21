SELECT*,

CASE 
	WHEN profits > 1000 THEN 'Rentable'
    WHEN profits < 1000 THEN 'No rentable'
End as Rentabilidad

FROM fortune

WHERE rank < 100
and company != 'Citigroup'
and industry = 'Diversified Financials'
 
ORDER by rank
