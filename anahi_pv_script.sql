create schema anahi_perez_valenzuela authorization zyvubigt

create table anahi_perez_valenzuela.companies(
	id_company varchar(10) not null,
	name_company varchar(100) not null,
	constraint companies_pk primary key (id_company)
);

create table anahi_perez_valenzuela.brands(
	id_brand varchar(10) not null,
	name_brand varchar(100) not null,
	id_company varchar(10) not null,
	constraint brands_pk primary key (id_brand),
	constraint brands_fk foreign key(id_company)
	references anahi_perez_valenzuela.companies (id_company)
);

create table anahi_perez_valenzuela.models(
	id_model varchar(10) not null,
	name_model varchar(100) not null,
	id_brand varchar(10) not null,
	constraint models_pk primary key (id_model),
	constraint models_fk foreign key(id_brand)
	references anahi_perez_valenzuela.brands (id_brand)
);

create table anahi_perez_valenzuela.colors(
	id_color varchar(10) not null,
	name_color varchar(100) not null,
	constraint colors_pk primary key (id_color)
);

create table anahi_perez_valenzuela.vehicles(
	id_vehicle varchar(10) not null,
	plate varchar(25) not null,
	id_model varchar(10) not null,
	id_color varchar(10) not null,
	total_km integer not null,
	date_purchase date not null,
	constraint vehicles_pk primary key (id_vehicle),
	constraint vehicles_model_fk foreign key (id_model)
	references anahi_perez_valenzuela.models (id_model),
	constraint vehicles_color_fk foreign key (id_color)
	references anahi_perez_valenzuela.colors (id_color)
);

create table anahi_perez_valenzuela.insurance_companies(
	id_insurance_company varchar(10) not null,
	name_insurance_company varchar(100) not null,
	constraint insurance_companies_pk primary key (id_insurance_company)
);

create table anahi_perez_valenzuela.insurance_history(
	num_insurance varchar(30) not null,
	id_vehicle varchar(10) not null,
	hire_date date not null,
	id_insurance_company varchar(10) not null,
	termination_end date null,
	constraint insurance_history_pk primary key (id_vehicle, num_insurance),
	constraint insurance_history_vehicle_fk foreign key(id_vehicle)
	references anahi_perez_valenzuela.vehicles (id_vehicle),
	constraint insurance_history_company_fk foreign key(id_insurance_company)
	references anahi_perez_valenzuela.insurance_companies (id_insurance_company)
);

create table anahi_perez_valenzuela.currencies(
	id_currency varchar(10) not null,
	name_currency varchar(100) not null,
	constraint currencies_pk primary key (id_currency)
);

create table anahi_perez_valenzuela.inspections_history(
	num_inspection varchar(30) not null,
	id_vehicle varchar(10) not null,
	inspection_date date not null,
	km_vehicle integer not null,
	inspection_cost integer not null,
	id_currency varchar(10) not null,
	constraint inspections_history_pk primary key (id_vehicle, num_inspection),
	constraint inspections_history_vehicle_fk foreign key(id_vehicle)
	references anahi_perez_valenzuela.vehicles (id_vehicle),
	constraint inspections_history_currency_fk foreign key(id_currency)
	references anahi_perez_valenzuela.currencies (id_currency)
);

insert into anahi_perez_valenzuela.companies 
(id_company, name_company)
values ('001', 'company1-3');

insert into anahi_perez_valenzuela.companies 
(id_company, name_company)
values ('002', 'company4-6');

insert into anahi_perez_valenzuela.companies 
(id_company, name_company)
values ('003', 'company7-9');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('001', 'brand1-3', '001');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('002', 'brand4-6', '001');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('003', 'brand7-9', '001');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('004', 'brand10-12', '002');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('005', 'brand13-15', '002');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('006', 'brand16-18', '002');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('007', 'brand19-21', '003');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('008', 'brand22-24', '003');

insert into anahi_perez_valenzuela.brands 
(id_brand, name_brand, id_company)
values ('009', 'brand25-27', '003');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('001', 'model1', '001');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('002', 'model2', '001');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('003', 'model3', '001');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('004', 'model4', '002');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('005', 'model5', '002');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('006', 'model6', '002');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('007', 'model7', '003');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('008', 'model8', '003');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('009', 'model9', '003');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('010', 'model10', '004');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('011', 'model11', '004');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('012', 'model12', '004');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('013', 'model13', '005');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('014', 'model14', '005');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('015', 'model15', '006');

insert into anahi_perez_valenzuela.models 
(id_model, name_model, id_brand)
values ('026', 'model26', '008');

insert into anahi_perez_valenzuela.colors 
(id_color, name_color)
values ('001', 'color1');

insert into anahi_perez_valenzuela.colors 
(id_color, name_color)
values ('002', 'color2');

insert into anahi_perez_valenzuela.colors 
(id_color, name_color)
values ('003', 'color3');

insert into anahi_perez_valenzuela.colors 
(id_color, name_color)
values ('004', 'color4');

insert into anahi_perez_valenzuela.colors 
(id_color, name_color)
values ('005', 'color5');

insert into anahi_perez_valenzuela.colors 
(id_color, name_color)
values ('006', 'color6');

insert into anahi_perez_valenzuela.colors 
(id_color, name_color)
values ('007', 'color7');

insert into anahi_perez_valenzuela.currencies 
(id_currency, name_currency)
values ('001', 'EUR');

insert into anahi_perez_valenzuela.currencies 
(id_currency, name_currency)
values ('002', 'USD');

insert into anahi_perez_valenzuela.currencies 
(id_currency, name_currency)
values ('003', 'BRL');

insert into anahi_perez_valenzuela.currencies 
(id_currency, name_currency)
values ('004', 'YEN');

insert into anahi_perez_valenzuela.insurance_companies 
(id_insurance_company, name_insurance_company)
values ('001', 'insurance_company1');

insert into anahi_perez_valenzuela.insurance_companies 
(id_insurance_company, name_insurance_company)
values ('002', 'insurance_company2');

insert into anahi_perez_valenzuela.insurance_companies 
(id_insurance_company, name_insurance_company)
values ('003', 'insurance_company3');

insert into anahi_perez_valenzuela.insurance_companies 
(id_insurance_company, name_insurance_company)
values ('004', 'insurance_company4');

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('001', '001', '2001-01-01', '001', 100, 'AAA111' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('002', '002', '2002-02-02', '012', 2000, 'BBB222' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('003', '001', '2003-03-03', '026', 3003, 'CCC333' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('004', '007', '2001-01-01', '004', 4100, 'DDD444' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('005', '005', '2015-05-15', '009', 1500, 'EEE555' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('006', '001', '2006-01-06', '012', 6606, 'FFF666' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('007', '001', '2017-01-07', '001', 1007, 'GGG777' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('008', '003', '2001-01-01', '005', 18800, 'HHH888' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('009', '006', '2001-01-09', '013', 9900, 'III999' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('011', '003', '2010-10-01', '004', 11100, 'JJJ111' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('012', '001', '2001-01-01', '001', 100, 'KKK222' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('013', '004', '2016-01-16', '026', 131300, 'LLL333' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('014', '004', '2014-04-04', '004', 44100, 'MMM444' );

insert into anahi_perez_valenzuela.vehicles 
(id_vehicle, id_color, date_purchase, id_model, total_km, plate)
values ('015', '005', '2015-05-05', '013', 15500, 'NNN555' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('010101', '001', '2001-01-01', '001' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('010102', '001', '2012-01-01', '002' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('020201', '002', '2002-02-02', '001' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('020202', '002', '2003-01-01', '004' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('020203', '002', '2011-11-11', '001' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('050501', '005', '2015-01-01', '003' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('080801', '008', '2009-01-01', '001' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('015151', '015', '2020-05-05', '002' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('015152', '015', '2021-01-01', '004' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('110101', '012', '2011-10-01', '004' );

insert into anahi_perez_valenzuela.insurance_history  
(num_insurance, id_vehicle, hire_date, id_insurance_company)
values ('210101', '012', '2021-12-12', '002' );

insert into anahi_perez_valenzuela.inspections_history  
(num_inspection, id_vehicle, inspection_date, km_vehicle, inspection_cost, id_currency)
values ('010101', '001', '2001-01-01', 100, 100, '001' );

insert into anahi_perez_valenzuela.inspections_history  
(num_inspection, id_vehicle, inspection_date, km_vehicle, inspection_cost, id_currency)
values ('010102', '001', '2003-01-01', 300, 150, '001' );

insert into anahi_perez_valenzuela.inspections_history  
(num_inspection, id_vehicle, inspection_date, km_vehicle, inspection_cost, id_currency)
values ('050101', '005', '2015-10-15', 1000, 100, '002' );

insert into anahi_perez_valenzuela.inspections_history  
(num_inspection, id_vehicle, inspection_date, km_vehicle, inspection_cost, id_currency)
values ('030101', '013', '2015-05-05', 1550, 2000, '003' );

insert into anahi_perez_valenzuela.inspections_history  
(num_inspection, id_vehicle, inspection_date, km_vehicle, inspection_cost, id_currency)
values ('060101', '006', '2020-05-05', 1150, 1500, '003' );

insert into anahi_perez_valenzuela.inspections_history  
(num_inspection, id_vehicle, inspection_date, km_vehicle, inspection_cost, id_currency)
values ('015101', '015', '2013-05-05', 2150, 4000, '003' );

insert into anahi_perez_valenzuela.inspections_history  
(num_inspection, id_vehicle, inspection_date, km_vehicle, inspection_cost, id_currency)
values ('030102', '013', '2015-05-05', 13150, 200, '002' );