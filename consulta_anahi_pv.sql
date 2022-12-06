select v.id_vehicle, v.date_purchase, v.plate, v.total_km, co.name_color , m.name_model, b.name_brand, c.name_company, ih.num_insurance, ic.name_insurance_company  
from anahi_perez_valenzuela.vehicles as v 
left join anahi_perez_valenzuela.models as m on v.id_model = m.id_model
left join anahi_perez_valenzuela.brands as b on m.id_brand = b.id_brand
left join anahi_perez_valenzuela.companies as c on b.id_company = c.id_company
left join anahi_perez_valenzuela.colors as co on v.id_color = co.id_color
left join anahi_perez_valenzuela.insurance_history as ih on v.id_vehicle = ih.id_vehicle 
left join anahi_perez_valenzuela.insurance_companies as ic on ih.id_insurance_company = ic.id_insurance_company