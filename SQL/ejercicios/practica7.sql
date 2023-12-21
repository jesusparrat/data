SELECT personal_status, 
case 
	WHEN class = 'good' then 'sí'
    else 'no'
end as Otorgado, sum(credit_amount) as monto_total
from LoanData
group by Otorgado, personal_status