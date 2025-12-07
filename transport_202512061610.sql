INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Ваз-21011',60000,155,16.19,34.65,39,'AI92'::public."fuel_type",10,4,NULL,4000,false,false,'2101','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, дверные карты, задняя полка','1','0',NULL,true,'Снять зеркало справа - 5.000 ₽<br> Снять брызговики сзади - 5.000 ₽<br> Снять шильдик Жигули 1300 - 5.000 ₽<br> ','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Москвич-2140',68000,117,16.96,23.32,39,'AI92'::public."fuel_type",10,4,NULL,5000,false,false,'Moskvich_2140','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях, нижние части дверных карт','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('ВАЗ-2115',189000,190,11.3,30.08,43,'AI92'::public."fuel_type",10,4,3850,11000,false,false,'2115','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, дверные карты','1','0',NULL,false,'Убрать шильдики - 10.000 ₽<br>
Убрать спойлер - 20.000 ₽<br>','PUBLIC',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('ГАЗ-3102',200000,150,12.89,29.14,70,'AI92'::public."fuel_type",10,4,4900,14000,false,false,'GAZ_3102','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, дверные карты','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz 190E (W201)',250000,200,8.73,29.24,55,'AI92'::public."fuel_type",10,4,6300,18000,false,false,'MB_W190','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Недоступно','Кузов (верхняя часть)',NULL,NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Chevrolet Lacetti',315000,184,9.14,24.15,60,'AI92'::public."fuel_type",10,4,5600,16000,false,false,'Lacetti','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,'Вставки в сиденьях, солнцезащитные козырьки','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Subaru Forester XT',880000,216,6.08,24.13,60,'AI92'::public."fuel_type",10,4,6300,18000,true,true,'Forester_XT','Внедорожник'::public."car_type",true,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('Toyota Altezza RS200',900000,215,6.2,23.98,60,'AI95'::public."fuel_type",10,4,6300,18000,true,true,'Altezza','Седан'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, 
дверные карты, 
стойки, 
задняя полка, 
задние динамики','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Задний'::public."DriveType"),
	 ('Nissan Skyline GT-R V-spec (R34)',915000,251,4.09,18.86,65,'AI95'::public."fuel_type",10,2,7000,20000,true,true,'GTR34','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('KIA Rio',879900,194,8.61,27.84,50,'AI92'::public."fuel_type",10,4,5250,15000,true,true,'Kia_Rio','Седан'::public."car_type",false,'Невский'::public."city",'Южная Корея'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Lada Priora',293000,183,9.49,28.2,43,'AI92'::public."fuel_type",10,4,4200,12000,false,false,'Lada_Priora','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Peugeot 406',310000,239,6.8,29.13,50,'AI92'::public."fuel_type",10,4,5250,15000,false,false,'Peugeot406','Седан'::public."car_type",false,'Невский'::public."city",'Франция'::public."CountryOrigin",4,'Вставки в сиденьях, окантовка ковриков','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('ВАЗ-2114',176000,190,11.31,30.09,43,'AI92'::public."fuel_type",10,4,3850,11000,false,false,'2114','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, дверные карты','1','0',NULL,false,'Убрать шильдики - 10.000 ₽<br>
Убрать спойлер - 20.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('ВАЗ-2104',92000,147,14.37,29.21,43,'AI92'::public."fuel_type",10,4,NULL,5000,false,false,'2104','Универсал'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Audi 80 Avant (B4)',360000,204,8.19,29.48,66,'AI95'::public."fuel_type",10,4,5250,15000,false,false,'Audi80_Avant','Универсал'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Кулиса КПП, пороги, сиденья, вставки в дверные карты, стойки, отделка потолка, отделка шторки люка','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Renault Logan',355000,176,9.63,27.76,43,'AI92'::public."fuel_type",10,4,5950,17000,false,false,'Logan','Седан'::public."car_type",false,'Невский'::public."city",'Франция'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Lada Granta',350000,183,10.01,29.76,43,'AI92'::public."fuel_type",10,4,3850,11000,false,false,'Lada_Granta','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('ГАЗ-3110 Волга',157000,175,11.17,30.73,50,'AI92'::public."fuel_type",10,4,4200,12000,false,false,'Gaz_3110','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW M5 (E60)',2735000,260,3.79,15.84,70,'AI98'::public."fuel_type",10,4,11550,33000,true,true,'M5E60','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, cиденья, вставки в дверных картах, отделка центральной консоли','1',NULL,NULL,true,'Выхлоп Eisenmann - 100.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ВАЗ-2106',91000,147,14.08,27.66,43,'AI92'::public."fuel_type",10,4,NULL,6000,false,false,'2106','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Renault Megane',330000,218,6.92,27.14,60,'AI92'::public."fuel_type",10,4,5600,16000,false,false,'Megane','Седан'::public."car_type",false,'Невский'::public."city",'Франция'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Mercedes-Benz 250D (W124)',290000,209,7.66,25.11,55,'AI92'::public."fuel_type",10,4,7000,20000,false,false,'MB_W124','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ГАЗ-24 Волга',102000,146,17.08,35.43,55,'AI92'::public."fuel_type",10,4,NULL,8000,false,false,'Gaz_24','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, 
дверные карты','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Skoda Rapid 2020',933000,195,8.86,28.79,55,'AI95'::public."fuel_type",10,4,5950,17000,true,true,'Skoda_rapid','Седан'::public."car_type",false,'Невский'::public."city",'Чехия'::public."CountryOrigin",4,'Вставка в торпедо, вставки в дверных картах, обод руля, вставки в сиденьях, центральный подлокотник','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('BMW M3 (e46)',3000000,250,4.42,22.0,63,'AI95'::public."fuel_type",10,2,10500,30000,true,true,'M3E46','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, строчка всех элементов салона','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ВАЗ-2107',115000,150,15.01,27.83,39,'AI92'::public."fuel_type",10,4,NULL,6000,false,false,'2107','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья,  передние стойки,  солнцезащитные козырьки','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Subaru Forester (SG9)',970000,216,5.16,22.13,60,'AI98'::public."fuel_type",15,4,6300,18000,true,true,'Forester_SG9','Кроссовер'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Нижняя часть торпедо, отделка центральной консоли, дверные карты, сиденья, ковролин, стойки, отделка','1','0',NULL,true,NULL,'Доступны все, кроме классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mazda 3',500000,200,7.27,24.83,55,'AI95'::public."fuel_type",10,4,6300,18000,false,false,'Mazda3','Хэтчбек'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, вставки в дверные карты','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Subaru WRX STI (VA)',3000000,254,4.45,23.28,60,'AI95'::public."fuel_type",10,4,10500,30000,true,true,'WRX_STI_VA','Седан'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Нижняя часть торпедо, кулиса КПП, частичная отделка центральной консоли, ручник, центральный подлоко','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mazda RX-7 (FD)',1090000,251,4.69,16.08,76,'AI95'::public."fuel_type",10,2,7700,22000,true,true,'MazdaRX7','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Peugeot 207',400000,194,8.99,28.86,50,'AI95'::public."fuel_type",10,4,6300,18000,false,false,'Peugeot207','Хэтчбек'::public."car_type",false,'Невский'::public."city",'Франция'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Volkswagen Passat GL (B3)',135000,198,8.84,31.59,75,'AI92'::public."fuel_type",10,4,6650,19000,false,false,'VW_PassatB3','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, кулиса КПП, дверные карты, сиденья, стойки, отделка потолка','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Skoda Superb',425000,209,6.84,19.17,60,'AI92'::public."fuel_type",10,4,7000,20000,false,false,'Skoda_Superb','Седан'::public."car_type",false,'Невский'::public."city",'Чехия'::public."CountryOrigin",4,'Нижняя часть торпедо, дверные карты, отделка центральной консоли, ковролин, сиденья, стойки, ремни б','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Lada Largus',500000,165,13.56,26.96,50,'AI92'::public."fuel_type",15,4,7000,20000,false,false,'Lada_Largus','Универсал'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,true,'Багажник на крышу - 50.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Chevrolet Suburban',955000,186,8.55,27.51,159,'AI92'::public."fuel_type",15,4,7000,20000,true,true,'Suburban','Внедорожник'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,'Торпедо, сиденья, дверные карты, центральная консоль, ковролин, стойки, отделка потолка, отделка баг','1','0',NULL,true,'Шноркель - 20.000 ₽<br>  
Лайтбар - 10.000 ₽<br>  
Арки в пластик - 20.000 ₽<br>  
Рейлинги - 20.000 ₽<br>  
Багажник на крышу - 40.000 ₽<br>  
Кенгурятник - 30.000 ₽<br>  
Клыки - 10.000 ₽<br>  
Клыки + Доп. свет - 20.000 ₽<br>','Доступны все',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('Chevrolet Niva',540000,140,16.09,32.04,86,'AI92'::public."fuel_type",10,4,3850,11000,false,false,'Chevy_Niva','Внедорожник'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mitsubishi Lancer Evolution IX MR',1100000,250,4.73,21.79,55,'AI95'::public."fuel_type",10,4,7000,20000,true,true,'Lancer_EvoIX','Седан'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Нижняя часть торпедо, отделка центральной консоли, дверные карты','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Audi Q7 V12 TDI',2880000,250,4.53,19.72,100,'DT'::public."fuel_type",15,4,9800,28000,true,true,'Q7_V12TDI','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Обод руля, сиденья, ремни безопасности, строчка центральной консоли, центральный подлокотник, вставк','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Nissan GT-R (R35) "Radio Province"',NULL,315,2.72,17.57,90,'AI95'::public."fuel_type",10,2,28350,81000,true,true,'GTR35RP','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Nissan Silvia S15 Spec-R "Akima"',NULL,235,6.2,27.8,65,'AI98'::public."fuel_type",10,2,24000,76500,true,true,'Akima','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Porsche 911 Carrera (993) RWB "Slimmer"',NULL,270,3.89,19.98,74,'AI98'::public."fuel_type",5,2,38500,110000,true,true,'Slimmer','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Porsche 911 Turbo S (992) "Cyberpunk"',NULL,332,2.51,22.37,85,'AI95'::public."fuel_type",5,2,45500,130000,true,true,'Cyberounk','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('RAM TRX Icebreaker',NULL,190,4.5,19.1,125,'AI98'::public."fuel_type",15,4,42000,120000,true,true,'Icebreaker','Пикап'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Subaru Impreza WRX STI "Снежинка"',NULL,257,4.0,20.89,60,'AI95'::public."fuel_type",10,4,7700,22000,true,true,'WRXSTISnow','Седан'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('ВАЗ-2109 Рестайлинг',145000,165,14.0,27.9,43,'AI92'::public."fuel_type",10,4,NULL,8000,false,false,'2109Rest','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, стойки, отделка потолка','1','0',NULL,false,'Боковые юбки - 50.000 ₽<br>
Коврики в салоне - 10.000 ₽<br>
Распорки над двигателем - 10.000 ₽<br>
Задние брызговики - 10.000 ₽<br>
Решётка в цвет кузова - 10.000 ₽<br>
Убрать шильдики - 10.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Chevrolet Cruze',560000,199,6.76,23.18,90,'AI95'::public."fuel_type",10,4,5600,16000,false,false,'Cruze','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,'Вставки в торпедо, вставки в дверные карты, вставки в сиденья','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Передний'::public."DriveType"),
	 ('УАЗ Патриот',565000,150,15.18,30.82,100,'AI92'::public."fuel_type",10,4,3850,11000,false,false,'Uaz_Patriot','Внедорожник'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,true,'Багажник на крыше - 25 000 ₽<br>  
Внедорожный багажник на крышу - 25 000 ₽<br>  
Шноркель - 25 000 ₽<br>  
Подножки - 25 000 ₽<br>  
Коврики - 25 000 ₽<br>  
Передний бампер - 25 000 ₽<br>  
Задний бампер - 25 000 ₽<br>  
Брызговики - 10 000 ₽<br>  
Кенгурятник - 30 000 ₽<br>','Доступны все',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Полный'::public."DriveType"),
	 ('BMW 535i (E34)',590000,232,6.28,25.13,80,'AI92'::public."fuel_type",10,4,6300,18000,false,false,'E34_535','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья,  вставки в дверных картах, ковролин, задняя полка, 
отделка багажника','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Volkswagen Golf IV',600000,200,8.25,27.54,55,'AI92'::public."fuel_type",10,4,5600,16000,false,false,'VW_GolfIV','Хэтчбек'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Передний'::public."DriveType"),
	 ('Lada 4x4 Urban',546800,159,13.6,26.89,43,'AI92'::public."fuel_type",10,2,3850,11000,false,false,'Lada_Urban','Внедорожник'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('ВАЗ-2110',133000,180,10.02,29.43,43,'AI92'::public."fuel_type",10,4,3500,10000,false,false,'2110','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,'Спойлер - 5.000 ₽<br>
Шильдик - 3.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Toyota Mark II Tourer V (90JZX)',1000000,247,5.16,25.68,70,'AI92'::public."fuel_type",10,4,7700,22000,true,true,'MarkII','Седан'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, дверные карты, стойки, ковролин, отделка багажника','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ВАЗ-21099',133000,165,13.5,27.86,40,'AI92'::public."fuel_type",10,4,NULL,9000,false,false,'21099','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, стойки, отделка потолка','1','0',NULL,false,'Боковые юбки - 50.000 ₽<br>
Коврики в салоне - 10.000 ₽<br>
Распорки над двигателем - 10.000 ₽<br>
Задние брызговики - 10.000 ₽<br>
Решётка в цвет кузова - 10.000 ₽<br>
Убрать шильдики - 10.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Volvo 850 R',1000000,245,5.43,25.54,73,'AI92'::public."fuel_type",15,4,7000,20000,true,true,'Volvo_850r','Универсал'::public."car_type",false,'Невский'::public."city",'Швеция'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('ВАЗ-21124',150000,180,10.65,31.85,43,'AI92'::public."fuel_type",10,4,3850,11000,false,false,'21124','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,'Спойлер - 5.000 ₽<br>
Шильдик - 3.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('BMW 750i (E38)',1100000,240,6.22,26.06,85,'AI95'::public."fuel_type",10,4,7350,21000,true,true,'E38_750i','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, отделка центральной консоли, дверные карты, сиденья, задняя полка','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Toyota Chaser Tourer V (JZX100)',550000,247,4.99,24.66,70,'AI95'::public."fuel_type",10,4,5600,16000,false,false,'Chaser','Седан'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, дверные карты','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW M3 (e92)',3160000,281,3.7,21.51,70,'AI95'::public."fuel_type",10,2,10500,30000,true,true,'M3E92','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, сиденья, вставки в дверных картах, центральная консоль','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Subaru Impreza WRX STI',1200000,250,4.5,23.24,60,'AI95'::public."fuel_type",10,4,7700,22000,true,true,'WRX_STI','Седан'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Toyota Land Cruiser Prado',3323000,192,7.48,25.48,97,'AI95'::public."fuel_type",15,4,11375,32500,true,true,'TLC_Prado','Внедорожник'::public."car_type",true,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('BMW X5 M (F85)',6210000,280,4.2,19.88,85,'AI95'::public."fuel_type",10,4,22050,63000,true,true,'X5M_F85','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в торпедо, частичная отделка центральной консоли, сиденья, вставки в дверных картах','1','0',NULL,true,'Задний диффузор RKP - 100.000 ₽<br>  
Передняя юбка - 100.000 ₽<br>','Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('KIA Optima SXL',1380000,243,6.37,25.74,70,'AI95'::public."fuel_type",10,4,7000,20000,true,true,'Kia_Optima','Седан'::public."car_type",false,'Невский'::public."city",'Южная Корея'::public."CountryOrigin",4,'Сирочка на руле, строчка на сиденьях, строчка на ручнике, строчка на кулисе КПП','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Volvo V60 Polestar',3400000,250,4.23,21.71,67,'AI95'::public."fuel_type",15,4,11900,34000,true,true,'Volvo_V60polestar','Универсал'::public."car_type",false,'Невский'::public."city",'Швеция'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах, центральный подлокотник','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('Subaru BRZ',1420000,226,6.15,24.53,60,'AI95'::public."fuel_type",10,2,7700,22000,true,true,'Subaru_BRZ','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW Z4',3500000,250,4.85,24.6,55,'AI95'::public."fuel_type",4,2,12250,35000,true,true,'Z4','Кабриолет'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в дверных картах, сиденья','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Skoda Octavia',1380000,217,6.94,25.17,50,'AI92'::public."fuel_type",10,4,7000,20000,true,true,'Skoda_octavia','Седан'::public."car_type",false,'Невский'::public."city",'Чехия'::public."CountryOrigin",4,'Торпедо, отделка центральной консоли, дверные карты, сиденья, стойки, отделка крыши, зеркало заднего','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Chevrolet Corvette ZR1',7090000,327,2.9,17.54,68,'AI95'::public."fuel_type",5,2,22400,64000,true,true,'CorvetteC6','Купе'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",2,'Нижняя часть торпедо, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Toyota Tundra',7000000,180,6.72,23.85,100,'AI95'::public."fuel_type",15,4,24500,70000,true,true,'Tundra','Пикап'::public."car_type",true,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в торпедо, вставки в дверные карты, сиденья, центральный подлоконтник, стойки, отделка потол','1','0',NULL,true,'Плоский кузов - 30.000 ₽<br>  
Дуги - 50.000 ₽<br>  
Кунг - 200.000 ₽<br>  
Пороги - 40.000 ₽<br>  
Шноркель - 20.000 ₽<br>  
Свет - 10.000 ₽<br>  
Багажник - 10.000 ₽<br>','Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('Nissan Skyline GTS-T Type-M (R-32)',615000,230,5.47,19.12,60,'AI92'::public."fuel_type",10,2,7000,20000,false,false,'SkylineR32','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mitsubishi Lancer Evolution X',1450000,240,4.67,20.57,59,'AI95'::public."fuel_type",10,4,8750,25000,true,true,'Lancer_EvoX','Седан'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах, центральный подлокотник','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Mercedes-Benz C63 AMG (w204)',3025000,276,3.75,18.52,66,'AI98'::public."fuel_type",10,4,10500,30000,true,true,'MB_W204AMG','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW M4 (G82)',8500000,290,3.8,23.72,59,'AI95'::public."fuel_type",10,2,29750,85000,true,true,'M4G82','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Нижняя часть торпедо, сиденья, вставки в дверных картах, центральный подлокотник','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Audi RS6 Avant (C7)',6820000,285,3.29,21.65,75,'AI95'::public."fuel_type",10,4,23800,68000,true,true,'RS6_C7','Универсал'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Частичная отделка центральной консоли, центральный подлокотник, сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Tesla Model S "Radio Province"',NULL,322,2013.0,15.82,100,'ELECTRIC'::public."fuel_type",10,4,47250,135000,true,true,'TeslaRP','Лифтбек'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Toyota Supra (A90) Targa',NULL,250,4.0,21.73,52,'AI95'::public."fuel_type",4,2,21000,60000,true,true,'SupraA80Targa','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ВАЗ-1111 "Ока" FOOL''S DAY',NULL,150,14.17,29.84,30,'AI92'::public."fuel_type",4,2,NULL,4000,false,false,'FoolsDay','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Передний'::public."DriveType"),
	 ('ВАЗ-21011 "Сгущёнка"',NULL,210,8.0,22.6,39,'AI92'::public."fuel_type",10,4,NULL,4000,false,false,'Sguha','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Infiniti QX80',7450000,210,7.5,24.31,100,'AI95'::public."fuel_type",15,4,25550,73000,true,true,'Infinity_QX80','Внедорожник'::public."car_type",true,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в торпедо, отделка центральных консолей, сиденья, вставки в дверных картах, стойки, отделка ','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Audi Q7 TDI',4015000,251,5.21,22.24,90,'AI95'::public."fuel_type",15,4,14000,40000,true,true,'Q7_V8TDI2015','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, дверные карты','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('BMW X5 (E53)',1550000,247,5.08,25.29,93,'AI95'::public."fuel_type",10,4,8750,25000,true,true,'X5E53','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в дверных картах, сиденья, центральный подлокотник','1','0',NULL,true,NULL,'Доступны все, кроме классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Audi S8 Plus (D4)',7782000,305,3.17,18.13,90,'AI95'::public."fuel_type",10,4,27650,79000,true,true,'S8Plus','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Вставки в сиденьях, вставки в дверных картах, центральный подлокотник','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('BMW X6 M (F86)',7885000,280,4.2,19.88,90,'AI95'::public."fuel_type",15,4,27300,78000,true,true,'X6M_F86','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в торпедо, частичная отделка центральной консоли, сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Lada Vesta Sport',1650000,193,7.87,25.48,55,'AI95'::public."fuel_type",10,4,7000,20000,true,true,'Lada_VestaSport','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Только вставки в сиденьях','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Mercedes-Benz S600 (W220)',1730000,253,5.21,23.68,88,'AI95'::public."fuel_type",10,4,7700,22000,true,true,'MB_W220','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Торпедо, руль, сиденья, селектор КПП, отделка центральной консоли, дверные карты, ковролин, стойки, ','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW M4 (F82)',4250000,281,3.48,15.72,60,'AI98'::public."fuel_type",10,2,14000,40000,true,true,'M4F82','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, сиденья, вставки в дверные карты, центральный подлокотник','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Lexus LX570',8315000,219,6.41,25.94,93,'AI98'::public."fuel_type",15,4,24500,70000,true,true,'LX570','Внедорожник'::public."car_type",true,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Maseratti GranTurismo',4350000,286,4.29,24.33,86,'AI95'::public."fuel_type",5,2,17500,50000,true,true,'Maserati_Granturismo','Купе'::public."car_type",false,'Мирный'::public."city",'Италия'::public."CountryOrigin",4,'Внутренняя часть обода руля, вставки в торпедо, отделка центральной консоли, вставки в сиденьях, две','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Range Rover Sport SVR',7285000,264,4.09,23.37,104,'AI95'::public."fuel_type",15,4,24500,70000,true,true,'RR_SportSVR','Кроссовер'::public."car_type",true,'Мирный'::public."city",'Англия'::public."CountryOrigin",4,'Вставка в торпедо, центральная часть руля, сиденья, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('УАЗ-2206 Буханка',620000,129,16.69,29.03,70,'AI92'::public."fuel_type",15,4,4200,12000,false,false,'Uaz_2206','Микроавтобус'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, 
пол,
моторный щит','1','0',NULL,false,NULL,'Доступны все',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Полный'::public."DriveType"),
	 ('Land Rover Range Rover',1500000,210,6.32,23.28,105,'AI95'::public."fuel_type",15,4,10500,30000,true,true,'LandRoverRR','Внедорожник'::public."car_type",true,'Невский'::public."city",'Англия'::public."CountryOrigin",4,'Торпедо, дверные карты, сиденья, центральный подлокотник','1','0',NULL,false,NULL,'Доступны все, кроме классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Nissan GT-R (R35)',9500000,315,2.72,17.57,74,'AI98'::public."fuel_type",5,2,33250,95000,true,true,'GTR35','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",3,'Вставка в торпедо, вставки в дверных картах, сиденья, частичная отделка центральной консоли, селекто','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('ПАЗ-320414-05 Вектор',4450000,115,17.65,22.38,90,'AI92'::public."fuel_type",NULL,22,3850,11000,true,true,'PAZ_Vector','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','0','0',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Audi A3 sedan',1750000,227,5.54,23.04,55,'AI95'::public."fuel_type",10,4,7000,20000,true,true,'Audi_A3','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, частичная отделка центральной консоли, вставки в дверных картах, кулиса КПП, сел','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Передний'::public."DriveType"),
	 ('Toyota Camry 3.5 (XV70)',3800000,220,7.7,23.88,60,'AI92'::public."fuel_type",10,4,13300,38000,true,true,'CamryXV70','Седан'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в торпедо, вставки в дверных картах, сиденья, отделка центральной консоли','1','0','0',true,'0','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Volkswagen Golf 2.0 TSI (VI)',620000,200,6.72,23.56,50,'AI95'::public."fuel_type",10,4,5950,17000,false,false,'VW_GolfVI','Хэтчбек'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Передний'::public."DriveType"),
	 ('Nissan 200SX',710000,234,5.56,26.13,65,'AI92'::public."fuel_type",10,2,7000,20000,true,true,'200SX','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, крышка бардачка, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mazda RX-8',720000,234,5.27,19.85,65,'AI95'::public."fuel_type",10,4,7000,20000,true,true,'MazdaRX8','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW 530d Touring (F11)',2000000,250,5.25,20.64,70,'DT'::public."fuel_type",10,4,7700,22000,true,true,'530dF11','Универсал'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в дверных картах, сиденья, частичная отделка центральной консоли','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW M760 Li xDrive (G12)',9720000,311,3.22,18.93,90,'AI95'::public."fuel_type",10,4,31850,91000,true,true,'M760Li','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",2,'Нижняя часть торпедо, частичная отделка центральной консоли, сиденья, вставки в дверных картах, задн','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mercedes-Benz E240 (W210)',760000,228,7.57,30.18,65,'AI95'::public."fuel_type",10,4,8050,23000,true,true,'MB_W210','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, сиденья, отделка центральной консоли, дверные карты','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Mercedes-Benz E63 S AMG (w213)',9867000,300,2.88,15.44,66,'AI95'::public."fuel_type",10,4,35700,102000,true,true,'MBW213_AMG','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Боковины руля, нижняя часть торпедо, отделка центральной консоли, центральный подлокотник, сиденья, ','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Audi S4 (B8)',2200000,250,4.15,21.54,64,'AI95'::public."fuel_type",10,4,7700,22000,true,true,'Audi_S4B8','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mercedes-Benz E63 S AMG (w212)',4500000,281,3.05,14.41,90,'AI95'::public."fuel_type",10,4,16100,46000,true,true,'MBW212_AMG','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mercedes-Benz 560SEL (W126)',1800000,250,5.8,30.16,90,'AI95'::public."fuel_type",10,4,10150,29000,true,true,'MB_W126','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Недоступно','Кузов (верхняя часть)','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz GLS63 AMG',10120000,278,4.08,25.62,100,'AI95'::public."fuel_type",10,4,35000,100000,true,true,'MB_GLS63','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Ford Focus 3',825000,204,7.7,27.16,65,'AI95'::public."fuel_type",10,4,6300,18000,true,true,'Focus3','Хэтчбек'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,'Нижняя часть торпедо, дверные карты, сиденья','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Volvo XC90 T5',4465000,237,5.66,27.48,80,'AI95'::public."fuel_type",15,4,14700,42000,true,true,'XC90T5','Кроссовер'::public."car_type",true,'Невский'::public."city",'Швеция'::public."CountryOrigin",4,'Руль, рулевая колонка, нижняя часть торпедо, отделка центральной консоли, сиденья, дверные карты, ст','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('BMW M8 Competition',17000000,312,2.8,18.71,68,'AI98'::public."fuel_type",10,2,50750,145000,true,true,'M8F92','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",2,'Вставки в дверных картах, вставки в дверных картах, цвет строчки элементов салона','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Lexus LFA',50000000,325,3.7,24.0,73,'AI98'::public."fuel_type",4,2,63000,180000,true,true,'Lexus_LFA','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",2,'Боковины руля, нижняя часть торпедо, отделка центральной консоли, дверные карты, сиденья','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Jeep Grand Cherokee Trackhawk',9710000,292,3.27,23.14,93,'AI100'::public."fuel_type",15,4,32200,92000,true,true,'Jeep_Trackhawk','Внедорожник'::public."car_type",true,'Мирный'::public."city",'США'::public."CountryOrigin",4,'Боковины руля, сиденья, вставки в дверные карты, центральный подлокотник','1',NULL,NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Ford Mustang Shelby GT500',4500000,320,3.6,20.27,70,'AI95'::public."fuel_type",10,2,14000,40000,true,true,'Mustang_GT500','Купе'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",2,'Вставки в сиденях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('KTM 690 Enduro R',1550000,190,3.69,17.13,12,'AI95'::public."fuel_type",NULL,2,6300,18000,true,true,'KTM_690_Enduro','Мотоцикл'::public."car_type",true,'Мирный'::public."city",'Австрия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,false,'Наклейка на вилку - 10.000 ₽<br>
Наклейка на кузов - 30.000 ₽<br> ','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('BMW 530d (E39)',750000,230,6.5,27.61,70,'DT'::public."fuel_type",10,4,8050,23000,true,true,'530dE39','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах, кулиса КПП, ручник','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Tesla Model S Plaid',16000000,322,2.13,15.82,100,'ELECTRIC'::public."fuel_type",10,4,47250,135000,true,true,'TeslaS_Plaid','Лифтбек'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в дверные карты, сиденья, центральный подлокотник','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mercedes-Benz C63 S Coupe AMG (w205)',5900000,291,3.25,19.12,66,'AI98'::public."fuel_type",10,2,24150,69000,true,true,'MB_W205AMG_Coupe','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Полоса на руле, строчка всех элементов салона, вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Porsche 911 Carrera S (992)',10000000,308,3.39,26.51,64,'AI98'::public."fuel_type",10,2,36750,105000,true,true,'911Carrera_992','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Торпедо, руль, отделка центральной консоли, окантовка ковриков, селектор КПП, дверные карты, сиденья','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Bentley Continental GT',14700000,330,3.47,22.14,70,'AI95'::public."fuel_type",10,2,40250,115000,true,true,'Bentley_Continental','Купе'::public."car_type",false,'Мирный'::public."city",'Англия'::public."CountryOrigin",3,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mercedes-AMG GT R',15000000,318,3.12,22.93,65,'AI98'::public."fuel_type",10,2,47250,135000,true,true,'MB_AMG_GTR','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",2,'0','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Toyota Land Cruiser 200 Executive Lounge',6010000,209,7.26,27.14,93,'AI92'::public."fuel_type",15,4,19250,55000,true,true,'TLC200','Внедорожник'::public."car_type",true,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Cadillac Escalade ESV',6015000,230,5.85,26.14,117,'AI95'::public."fuel_type",15,4,17500,50000,true,true,'Escalade_ESV','Внедорожник'::public."car_type",true,'Мирный'::public."city",'США'::public."CountryOrigin",2,'Торпедо, руль, сиденья, отделка центральной консоли, дверные карты, стойки, отделка потолка, отделка','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Volkswagen Polo',865000,192,8.7,27.18,50,'AI92'::public."fuel_type",10,4,6300,18000,true,true,'VW_Polo','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Mercedes-Benz CLS63 AMG (C218) Рестайлинг',4820000,285,3.1,15.84,66,'AI98'::public."fuel_type",10,4,19250,55000,true,true,'MB_CLS63rest','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('ЛиАЗ-5256.00 (поздний вариант)',5250000,95,NULL,21.9,238,'DT'::public."fuel_type",NULL,24,14000,40000,true,true,'LIAZ5256_00_pozdn','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова','Нижняя часть кузова, полосы на кузове','Двери',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Toyota Supra (A90)',6100000,250,4.0,21.73,52,'AI95'::public."fuel_type",4,2,21000,60000,true,true,'Supra_A90','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Боковины руля, вставка в торпедо, солнцезащитные козырьки, сиденья, отделка центральной консоли, вст','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Range Rover (L460)',15500000,250,4.6,24.73,90,'AI98'::public."fuel_type",15,4,47950,137000,true,true,'RR_L460','Внедорожник'::public."car_type",true,'Мирный'::public."city",'Англия'::public."CountryOrigin",4,'Руль, рулевая колонка, центральная и нижняя часть торпедо, отделка центральных консолей, дверные кар','1','0',NULL,true,'Крыша в цвет авто - 10.000 ₽<br>  
Чёрная крыша - 100.000 ₽<br>','Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('ЛиАЗ 5256.00-11',5750000,105,22.48,24.12,238,'DT'::public."fuel_type",NULL,44,14000,40000,true,true,'LIAZ5256_00_11','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова','Нижняя часть кузова, полоса на кузове','Двери',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Toyota Supra (A80)',850000,251,4.26,18.83,60,'AI95'::public."fuel_type",10,2,7000,20000,true,true,'SupraMKIV','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Lada Vesta',852900,182,9.35,28.14,55,'AI95'::public."fuel_type",10,4,4200,12000,true,true,'Lada_Vesta','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Lexus IS 350 F',2500000,249,4.82,24.07,60,'AI98'::public."fuel_type",10,4,8400,24000,true,true,'Lexus_IS350F','Седан'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Rolls-Royce Wraith',26000000,253,3.79,18.91,83,'AI98'::public."fuel_type",10,2,52500,150000,true,true,'RR_Wraith','Купе'::public."car_type",false,'Мирный'::public."city",'Англия'::public."CountryOrigin",4,'0','Нижняя часть кузова','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Mercedes-Benz ML 63 AMG (W164)',2550000,250,5.0,25.18,95,'AI95'::public."fuel_type",15,4,8400,24000,true,true,'MB_ML63','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, дверные карты, нижняя часть торпедо, отделка центральной консоли, шторка багажника','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Bentley Bentayga W12',18633000,300,3.41,18.91,85,'AI95'::public."fuel_type",15,4,45500,130000,true,true,'BentaygaW12','Кроссовер'::public."car_type",true,'Мирный'::public."city",'Англия'::public."CountryOrigin",4,'Руль, нижняя часть торпедо, вставки в дверных картах, сиденья','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Lamborghini Urus',22450000,305,3.6,19.96,95,'AI95'::public."fuel_type",15,4,54250,155000,true,true,'Lambo_Urus','Кроссовер'::public."car_type",true,'Мирный'::public."city",'Италия'::public."CountryOrigin",2,'Нижняя часть торпедо, частичная отделка центральной консоли, дверные карты, сиденья','1',NULL,NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Volkswagen Jetta',2450000,210,7.0,25.21,50,'AI95'::public."fuel_type",10,4,8400,24000,true,true,'VW_Jetta','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Mercedes-Benz G63 AMG (W464)',21000000,240,4.5,24.41,100,'AI98'::public."fuel_type",15,4,52500,150000,true,true,'MB_G63W464','Внедорожник'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах, вставка крышки багажника','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Porsche 911 Turbo S (992)',25000000,332,2.51,22.37,85,'AI95'::public."fuel_type",5,2,45500,130000,true,true,'911TurboS_992','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",2,'Торпедо, руль, отделка центральной консоли, окантовка ковриков, селектор КПП, дверные карты, сиденья','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Ferrari Portofino',28000000,320,3.5,23.17,80,'AI98'::public."fuel_type",4,2,52500,150000,true,true,'Ferrari_ Portofino','Кабриолет'::public."car_type",false,'Мирный'::public."city",'Италия'::public."CountryOrigin",2,'Нижняя часть торпедо, строчка элементов салона, частичная отделка центральной консоли, сиденья, вста','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('McLaren 720S Spyder',31720000,341,2.9,21.98,72,'AI98'::public."fuel_type",4,2,52500,150000,true,true,'McLaren720s','Кабриолет'::public."car_type",false,'Мирный'::public."city",'Англия'::public."CountryOrigin",3,'Вставки в торпедо, вставки в дверные карты, отделка центральной консоли, сиденья','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Rolls-Royce Phantom VIII',38500000,254,4.25,21.13,90,'AI95'::public."fuel_type",10,4,56000,160000,true,true,'RR_PhantomVIII','Седан'::public."car_type",false,'Мирный'::public."city",'Англия'::public."CountryOrigin",4,'0','Нижняя часть кузова','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Audi A4 Allroad quattro',2610000,252,4.95,22.82,70,'AI95'::public."fuel_type",10,4,8750,25000,true,true,'A4_Allroad','Универсал'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Руль, кулиса КПП, сиденья, дверные карты, центральный подлокотник','1','0',NULL,false,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Rolls-Royce Cullinan',45000000,250,5.2,24.6,90,'AI98'::public."fuel_type",15,4,59500,170000,true,true,'RR_Culinan','Внедорожник'::public."car_type",true,'Мирный'::public."city",'Англия'::public."CountryOrigin",4,'Вставка в торпедо, нижняя часть торпедо, отделка центральных консолей, вставки в дверных картах,  си','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Ferrari LaFerrari',77600000,385,2.39,18.13,92,'AI95'::public."fuel_type",5,2,77000,220000,true,true,'LaFerrari','Купе'::public."car_type",false,'Мирный'::public."city",'Италия'::public."CountryOrigin",1,'Вставка в торпедо, нижняя часть торпедо, рулевая колонка, сиденья, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ВАЗ-21011 "Сода"',NULL,210,8.0,22.6,39,'AI92'::public."fuel_type",10,4,NULL,4000,false,false,'Soda','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ВАЗ-2107 "Joke"',NULL,150,15.01,27.83,39,'AI92'::public."fuel_type",10,4,NULL,6000,false,false,'Joke','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ВАЗ-2107 VFTS "Autumn Drift"',NULL,150,15.01,27.83,39,'AI92'::public."fuel_type",10,4,NULL,6000,false,false,'Autdrtift','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ВАЗ-2108 "Birthday Race"',NULL,156,12.51,26.92,43,'AI92'::public."fuel_type",10,2,NULL,8000,false,false,'2108BR','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Передний'::public."DriveType"),
	 ('ВАЗ-2108 "Буран"',NULL,200,8.01,25.81,43,'AI92'::public."fuel_type",10,2,NULL,8000,false,false,'2108BR','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Передний'::public."DriveType"),
	 ('ГАЗ-24 "Космос"',NULL,146,17.08,35.43,55,'AI92'::public."fuel_type",10,4,NULL,8000,false,false,'GAZ24Kosmos','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Ford Mustang GT 2015',6350000,318,3.17,16.87,61,'AI95'::public."fuel_type",10,2,25200,72000,true,true,'MustangGT_2015','Купе'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",3,'Вставки в сиденях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ГАЗ-3309 Рест',960000,95,NULL,22.78,105,'DT'::public."fuel_type",300,2,NULL,8000,false,false,'Gaz_3309Dorest','Грузовик'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','0','Обод решётки радиатора','0',false,'0',NULL,NULL,'CARGO'::public."TransportClass",300,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('ГАЗ-66',1350000,85,NULL,19.87,210,'AI92'::public."fuel_type",310,2,4725,13500,true,true,'Gaz_66','Грузовик'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'Сиденья, крышка моторного щита			
			
			
			
			
','0','0','0',false,'Тент - 50.000 ₽<br>  
Защита кабины - 100.000 ₽<br>  
Багажник на крыше - 40.000 ₽<br>  
Свет на кенгурятник - 10.000 ₽<br>  
Свет на капоте - 10.000 ₽<br>  
Свет на крыше - 10.000 ₽<br>',NULL,NULL,'CARGO'::public."TransportClass",310,'Тихий Огонёк'::public."Showroom",'Полный'::public."DriveType"),
	 ('Chevrolet Camaro ZL1',6550000,318,2.95,17.72,72,'AI98'::public."fuel_type",10,2,14350,41000,true,true,'CamaroZL1','Купе'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",2,'0','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ГАЗ-3302 Будка',1335000,120,19.93,27.71,70,'AI92'::public."fuel_type",200,2,4305,12300,true,true,'Gaz_3302Budka','Грузовик'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','0','Кузов',NULL,false,'0','0',NULL,'CARGO'::public."TransportClass",200,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Volkswagen Touareg V8 TDI',2680000,242,4.99,24.86,85,'DT'::public."fuel_type",15,4,8400,24000,true,true,'VWTouareg_V8TDI','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Крышка бардачка, вставки в сиденьях, вставки в дверных картах, стойки, отделка потолка, шторка багаж','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('ГАЗ-3302 Тент',1170000,120,19.93,27.71,70,'AI92'::public."fuel_type",150,2,3850,11000,true,true,'Gaz_3302Tent','Грузовик'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','0','Тент','0',false,'0',NULL,NULL,'CARGO'::public."TransportClass",150,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Audi RS6 Avant (C8)',10500000,285,2.75,14.31,73,'AI98'::public."fuel_type",10,4,42000,120000,true,true,'RS6_C8','Универсал'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Строчка торпедо, сиденья, подлокотники в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mercedes-Maybach S650 (X222)',10125000,262,3.88,19.92,80,'AI95'::public."fuel_type",10,4,32900,94000,true,true,'Maybach_S650','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставка в торпедо, вставки в дверных картах, сиденья','Нижняя часть кузова, зеркала','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Audi RS7 (C8)',10600000,305,2.77,16.13,73,'AI98'::public."fuel_type",10,4,42000,120000,true,true,'RS7_C8','Лифтбек'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,NULL,'1','0',NULL,false,NULL,NULL,NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Dodge Challenger SRT Hellcat',6500000,319,2.88,17.6,90,'AI98'::public."fuel_type",10,2,23333,66666,true,true,'ChallengerSRT','Купе'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",2,'Вставки в сиденях, вставки в дверных картах','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Scania R500',14150000,121,18.45,24.96,1100,'DT'::public."fuel_type",1000,2,21000,60000,true,true,'ScaniaR500','Тягач'::public."car_type",false,'Мирный'::public."city",'Швеция'::public."CountryOrigin",0,'0','0','0','0',false,'Кузов в цвет - 500 000 руб<br>
Свет на крыше - 180 000 руб<br>
Козырёк на кабину - 210 000 руб<br>
Шторка в салон - 20 000 руб<br>
Пневмогудки - 60 000 руб<br>
Люстра на крыше - 180 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",1000,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Mercedes-Benz Actros',14990000,121,18.33,24.77,1200,'DT'::public."fuel_type",1000,2,21000,60000,true,true,'MB_Actros','Тягач'::public."car_type",false,'Мирный'::public."city",'Германия'::public."CountryOrigin",0,'0','0','0','0',false,'Боковая юбка - 180 000 руб<br>
Решётка в цвет - 100 000 руб<br>
Защита бампера - 40 000 руб<br>
Сигнал на крыше - 80 000 руб<br>
Люстра на крыше - 100 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",1000,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('GMC Vandura',1500000,150,11.18,24.44,125,'AI92'::public."fuel_type",15,2,7000,20000,true,true,'Vandura','Фургон'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,'Рамка под лобовым стеклом, внутренняя часть дверей','1','0','0',true,'0','Доступны только классические и отечественного производства',NULL,'CARGO'::public."TransportClass",120,NULL,'Полный'::public."DriveType"),
	 ('Bugatti Chiron Sport',91000000,417,NULL,NULL,100,'AI98'::public."fuel_type",5,2,91000,260000,true,true,'Chiron','Купе'::public."car_type",false,'Мирный'::public."city",'Франция'::public."CountryOrigin",1,'0','Передняя часть кузова, нижняя часть зеркал','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Volvo VNL',9980000,120,18.86,25.35,1140,'DT'::public."fuel_type",1000,2,15750,45000,true,true,'Volvo_VNL','Тягач'::public."car_type",false,'Мирный'::public."city",'Швеция'::public."CountryOrigin",0,'Вставки в сиденьях, вставки в диванах			
			
			
	','1','0','0',true,'Чёрный пластик - 200 000 руб<br>
Хром комплект - 250 000 руб<br>
Зеркало не треноге - 60 000 руб<br>
Зеркало аэродин. - 80 000 руб<br>
Губа для бампера - 50 000 руб<br>
Кастомный бампер - 200 000 руб<br>
Кенгурятник - 200 000 руб<br>
Решётка хром - 60 000 руб<br>
Резина на юбках - 20 000 руб<br>
Лампочки на юбке - 40 000 руб<br>
Дополнительный свет - 60 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",1000,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ГАЗ-3309 Дорест',960000,95,NULL,22.78,105,'DT'::public."fuel_type",300,2,NULL,8000,false,false,'Gaz_3309Dorest','Грузовик'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','0','Обод решётки радиатора','0',false,'0',NULL,NULL,'CARGO'::public."TransportClass",300,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Scania Topline R480',7950000,120,18.81,25.22,1200,'DT'::public."fuel_type",1000,2,17500,50000,true,true,'Scania_Topline','Тягач'::public."car_type",false,'Мирный'::public."city",'Швеция'::public."CountryOrigin",0,'0','1','0','0',false,'0',NULL,NULL,'CARGO'::public."TransportClass",1000,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Renault Magnum',6500000,118,19.23,25.14,1445,'DT'::public."fuel_type",1000,2,15750,45000,true,true,'Renault_Magnum','Тягач'::public."car_type",false,'Мирный'::public."city",'Франция'::public."CountryOrigin",0,'Вставки в пассажирском и заднем сиденьях, матрас с','0','0','0',false,'Боковые накладки - 150 000 руб<br>
Свет на крыше - 120 000 руб<br>
Сигнал на крыше - 60 000 руб<br>
Шторки в салоне - 20 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",1000,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz G65 AMG (W463)',11000000,233,4.55,21.42,96,'AI95'::public."fuel_type",10,4,43750,125000,true,true,'MB_G65W463','Внедорожник'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('ИЖ Юпитер-5',60000,132,7.21,40.7,16,'AI92'::public."fuel_type",NULL,2,NULL,5000,false,false,'Upiter5','Мотоцикл'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Porsche Cayenne Turbo',11625000,286,3.36,17.02,95,'AI95'::public."fuel_type",10,4,40250,115000,true,true,'CayenneTurbo','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Нижняя часть торпедо, частичная отделка центральной консоли, сиденья, дверные карты','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('ГАЗель БИЗНЕС',500500,129,14.94,25.37,75,'AI92'::public."fuel_type",NULL,11,4200,12000,false,false,'GAZelle_Biznes','Микроавтобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в сиденьях','1','0','0',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Porsche Panamera Turbo',12230000,312,3.2,16.75,100,'AI98'::public."fuel_type",10,4,43750,125000,true,true,'Panamera','Лифтбек'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Нижняя часть торпедо, отделка центральной консоли, дверные карты, пороги, стойки, отделка крыши, отд','1','0',NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('BMW S1000RR',5400000,300,1.6,16.5,18,'AI95'::public."fuel_type",NULL,2,15400,44000,true,true,'BMW_S1000RR','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Германия'::public."CountryOrigin",NULL,NULL,'Передний подкрылок, пластик на передней части, топливный бак, хвостовая часть','Сиденье','Колёсные диски',false,'Комплектация M - 300.000 ₽<br>
Наклейка на корпусе №1 - 30.000 ₽<br>
Наклейка на корпусе №2 - 50.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz G500 (W464)',12500000,217,5.0,19.94,95,'AI98'::public."fuel_type",15,4,45500,130000,true,true,'MB_G500W464','Внедорожник'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, вставки в дверных картах, вставка крышки багажника','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Audi SQ8',11300000,250,4.1,24.8,85,'DT'::public."fuel_type",15,4,38500,110000,true,true,'Audi_SQ8','Внедорожник'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, центральный подлокотник, подлокотники в дверных картах','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Range Rover SVAutobiography',12830000,250,4.58,22.73,106,'AI95'::public."fuel_type",15,4,42000,120000,true,true,'RR_SVAutobiography','Внедорожник'::public."car_type",true,'Мирный'::public."city",'Англия'::public."CountryOrigin",4,'Недоступно','Нижняя часть кузова','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Porsche Taycan Turbo S',13500000,260,2.5,15.53,100,'ELECTRIC'::public."fuel_type",10,4,49000,140000,true,true,'Taycan_TurboS','Универсал'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",0,'Цвет строчки руля, цвет строчки торпедо, нижняя часть торпедо, отделка центральной консоли, сиденья,','1','0',NULL,false,'Чёрная крыша - 200.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('ЛАЗ-4207',5500000,113,22.47,28.24,230,'DT'::public."fuel_type",NULL,39,15750,40000,true,true,'LAZ_4207','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Верхняя и нижняя боковые полосы','Средняя боковая полоса',false,'Шторки - 125.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЗИЛ 131 Тент',1500000,80,NULL,19.8,340,'DT'::public."fuel_type",330,2,5250,15000,true,true,'Zil_131Tent','Грузовик'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'Сиденья',NULL,NULL,NULL,false,'0','0',NULL,'CARGO'::public."TransportClass",330,'Тихий Огонёк'::public."Showroom",'Полный'::public."DriveType"),
	 ('ГАЗель NEXT',1500000,130,15.19,26.71,68,'AI92'::public."fuel_type",20,2,5250,15000,true,true,'GAZelle_NEXT','Фургон'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','0','0',false,'0',NULL,NULL,'CARGO'::public."TransportClass",150,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Honda Gold Wing GL1500',315000,160,5.5,22.17,15,'AI92'::public."fuel_type",NULL,2,3500,10000,false,false,'Honda_GoldWing','Мотоцикл'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",0,'0','0','0','0',false,'0',NULL,NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Yamaha XT660',450000,160,4.54,12.96,17,'AI95'::public."fuel_type",NULL,2,5250,15000,false,false,'YamahaXT660','Мотоцикл'::public."car_type",true,'Мирный'::public."city",'Япония'::public."CountryOrigin",0,'0','0','0','0',false,'0',NULL,NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Harley-Davidson Fat Boy Lo',1700000,191,5.13,54.18,19,'AI95'::public."fuel_type",NULL,2,6650,19000,true,true,'HarleyDavidson','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",0,'0','0','0','0',false,'0',NULL,NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Ducati Diavel Carbon',2200000,270,1.75,13.64,17,'AI95'::public."fuel_type",NULL,2,9800,28000,true,true,'DucatiDiavel','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Италия'::public."CountryOrigin",0,'0','0','0','0',false,'0',NULL,NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Indian Chief Dark Horse',3750000,192,5.14,64.9,15,'AI92'::public."fuel_type",NULL,2,15750,45000,true,true,'IndianCheif','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",0,'0','0','0','0',false,'0',NULL,NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Suzuki GSX 1300 R Hayabusa',2700000,312,1.62,21.71,21,'AI95'::public."fuel_type",NULL,2,9450,27000,true,true,'Suzuki_GSX_1300','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,false,'Наклейка - 30.000 ₽<br>
Кузовная накладка - 50.000 ₽<br> ','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Honda Dio AF 35 ZX',25000,64,NULL,32.45,6,'AI92'::public."fuel_type",NULL,2,NULL,5000,false,false,'Honda_Dio','Мотоцикл'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",0,'','','','',false,'',NULL,NULL,'MOTO'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Audi A8 (D4)',6600000,250,4.5,24.92,82,'AI98'::public."fuel_type",10,4,23100,66000,true,true,'A8D4','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'0','1','0',NULL,false,NULL,NULL,NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Nissan 400Z',6700000,256,4.2,23.01,75,'AI95'::public."fuel_type",5,2,23450,67000,true,true,'400Z','Купе'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",4,'Вставки в сиденьях, строчка всех элементов салона','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Porsche Panamera Turbo S Sport Turismo',13700000,315,3.1,16.34,90,'AI98'::public."fuel_type",10,4,43400,124000,true,true,'Porshe_Turismo','Лифтбек'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Нижняя часть торпедо, отделка передней и задней центральной консоли, дверные карты, сиденья','1',NULL,NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Mercedes-AMG GT 63 S 4MATIC+',13863000,315,3.03,26.51,68,'AI98'::public."fuel_type",10,4,43750,125000,true,true,'MB_GT63s','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Торпедо, боковины руля, вставки в дверные карты, сиденья, отделка центральной консоли, центральный п','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('КАвЗ-4238 Аврора',5890000,119,18.45,25.49,170,'DT'::public."fuel_type",NULL,39,14875,42500,true,true,'KAVZ_4238_Avrora','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Нижняя полоса','Верхняя полоса',false,'Шторки - 125.000 ₽<br>   
Аксессуары - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЗИЛ 133540',NULL,100,26.7,26.7,700,'DT'::public."fuel_type",400,2,8750,25000,true,true,'ZIL1335430','Тягач'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",400,NULL,'Задний'::public."DriveType"),
	 ('Honda CBR1100XX Super Blackbird',700000,300,1.8,24.71,23,'AI95'::public."fuel_type",NULL,2,5250,15000,true,true,'HondaCBR1100XX ','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",NULL,NULL,'1','Сидение','Диски',false,'Наклейка на вилку - 10.000 ₽<br>
Наклейка на кузов - 30.000 ₽<br> ','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ПАЗ-32053 (бензин)',1500000,90,NULL,21.96,105,'AI92'::public."fuel_type",NULL,23,5250,15000,true,true,'PAZ_32053_bensin','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Полоски на кузове','0',false,'Шторки - 75.000 ₽<br>  ',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ПАЗ-32054 (бензин)',1600000,90,NULL,21.96,105,'AI92'::public."fuel_type",NULL,21,5250,15000,true,true,'PAZ_32054_Bensin','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Полоски на кузове, боковые части рисунка на кузове','0',false,'Шторки - 75.000 ₽<br>  ',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ПАЗ-32054 (дизель)',1700000,94,NULL,21.81,105,'DT'::public."fuel_type",NULL,21,7000,20000,true,true,'PAZ_32054_Diesel','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','0','Центральная часть рисунка на кузове',false,'Шторки - 75.000 ₽<br>  ',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz Sprinter Classic 311 CDI',2600000,145,12.62,27.1,75,'DT'::public."fuel_type",20,2,9450,27000,true,true,'MB_Sprinter311','Фургон'::public."car_type",false,'Мирный'::public."city",'Германия'::public."CountryOrigin",0,'0','1','0','0',false,'Кенгурятник хром - 100 000 руб<br>
Кенгурятник чёрный - 100 000 руб<br>
Дополнительный свет - 45 000 руб<br>
Брызговики - 30 000 руб<br>
Защита фонарей (перед) - 75 000 руб<br>
Защита фонарей (зад) - 75 000 руб<br>
Багажник на крыше - 275 000 руб<br>
Дефлектор капота - 30 000 руб<br>
Фаркоп-подножка - 45 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",230,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛАЗ-5207',6000000,100,25.06,25.06,230,'DT'::public."fuel_type",NULL,47,15750,40000,true,true,'LAZ_5207','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Верхняя и нижняя полосы','Средняя полоса',false,'Шторки - 125.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛиАЗ 5256.40',6250000,105,22.49,24.12,238,'DT'::public."fuel_type",NULL,23,14000,40000,true,true,'LIAZ_5256_40','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова','Нижняя часть кузова, полосы на кузове','Двери, поручни в салоне',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Ikarus 260 (платетарные двери)',6550000,90,NULL,21.91,250,'DT'::public."fuel_type",NULL,22,14000,40000,true,true,'Ikarus260_planeta','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова	
	
	
	
	
	
	
	
	
	
	
	','Средняя часть кузова','Нижняя часть кузова',false,'Дополнительные фонари 1 - 50.000 ₽<br>  
Дополнительные фонари 2 - 50.000 ₽<br>  
Дополнительные зеркала - 25.000 ₽<br>  
Хромированная накладка 1 - 25.000 ₽<br>  
Хромированная накладка 2 - 25.000 ₽<br>  
Отражатели - 50.000 ₽<br>  
Вымпелы - 25.000 ₽<br>  
Шторки - 100.000 ₽<br>  
Огни автопоезда - 75.000 ₽<br>  
Уплотнительный кожух - 50.000 ₽<br>  
Табличка "Заказной" - 25.000 ₽<br>  
Брызговики - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Scania OmniLink CK95UB 4x2 LB (2 doors)',7500000,100,20.4,20.4,300,'DT'::public."fuel_type",NULL,43,8750,25000,true,true,'Scania_omnilink_2dr','Автобус'::public."car_type",false,'Мирный'::public."city",'Швеция'::public."CountryOrigin",0,'0','Верхняя часть кузова','Нижняя часть кузова','0',false,'Наклейки Scania - 25.000 ₽<br>
Брызговики - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW X7',13500000,250,4.7,24.86,83,'AI98'::public."fuel_type",15,4,42000,120000,true,true,'X7G07','Внедорожник'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, отделка центральной консоли, вставки в дверных картах, сиденья, частичная отде','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('КамАЗ 54115',NULL,100,26.3,26.3,500,'DT'::public."fuel_type",1000,2,7000,20000,true,true,'KamaZ5115','Тягач'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",1000,NULL,'Задний'::public."DriveType"),
	 ('ЛиАЗ-677М "Дедморобус"',NULL,80,NULL,18.44,300,'DT'::public."fuel_type",NULL,24,14000,40000,true,true,'LiAZ677Moroz','Автобус'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ПАЗ Vector Next "Radio Province"`',NULL,133,16.96,32.01,95,'AI92'::public."fuel_type",NULL,24,5250,15000,true,true,'PAZVectorRP','Автобус'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('УАЗ-3909 "Оборона"',NULL,129,16.69,29.03,70,'AI92'::public."fuel_type",15,7,4200,12000,false,false,'UAZA3909Oborona','Микроавтобус'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('ГАЗ-13 "Чайка"',NULL,160,16.0,37.1,80,'AI92'::public."fuel_type",10,4,21000,60000,true,true,'GAZ13','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('BMW 850 CSi',NULL,280,4.78,25.48,90,'AI95'::public."fuel_type",10,2,10500,30000,true,true,'BMW850CSI','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Alfa Romeo Giulia',NULL,307,3.56,16.41,70,'AI95'::public."fuel_type",10,4,19250,55000,true,true,'ALfaR','Седан'::public."car_type",false,'Невский'::public."city",'Италия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('ГАЗ-М20 "Победа"',NULL,105,30.48,32.3,80,'AI92'::public."fuel_type",10,4,14000,40000,true,true,'GAZM20','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Scania OmniLink CK95UB 4x2 LB (3 doors)',7850000,100,20.4,20.4,300,'DT'::public."fuel_type",NULL,33,8750,25000,true,true,'Scania_Omnilink_3dr','Автобус'::public."car_type",false,'Мирный'::public."city",'Швеция'::public."CountryOrigin",0,'0','Верхняя часть кузова','Нижняя часть кузова','0',false,'Наклейки Scania - 25.000 ₽<br>
Брызговики - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ГАЗель NEXT A64R42 Ситилайн',2100000,120,18.81,27.91,64,'AI92'::public."fuel_type",NULL,18,7000,20000,true,true,'GAZelle_cityline','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','0','0',false,'Брызговики - 25.000 ₽<br>
Кондиционер - 75.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ПАЗ-4234 (дизель)',2150000,93,NULL,21.65,95,'DT'::public."fuel_type",NULL,30,7000,20000,true,true,'PAZ_4234_Diesel','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Задняя часть рисунка','Задняя часть рисунка',false,'Шторки - 75.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Богдан А09304 Атаман',2400000,110,26.0,32.2,120,'DT'::public."fuel_type",NULL,25,8750,25000,true,true,'bogdan_ataman','Автобус'::public."car_type",false,'Мирный'::public."city",'Украина'::public."CountryOrigin",0,'0','1','0','0',false,'Дополнительный свет - 25.000 ₽<br>  
Дополнительные зеркала - 45.000 ₽<br>  
Логотип "Богдан" - 10.000 ₽<br>  
Запасное колесо - 100.000 ₽<br>  
Кондиционер - 125.000 ₽<br>  
ГБО - 200.000 ₽<br>  
Брызговики - 30.000 ₽<br>  
Шторки - 75.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('КАвЗ-685М',2450000,90,NULL,17.46,105,'DT'::public."fuel_type",NULL,20,7875,22500,true,true,'KAVZ_685M','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова, передняя решётка','Полоски на кузове','Полоски на кузове',false,'Шторки - 75.000 ₽<br>  
Утеплитель радиатора - 50.000 ₽<br>  
Аксессуары - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz CLS63 AMG (C218) Дорест',4400000,285,3.17,15.95,66,'AI98'::public."fuel_type",10,4,15400,44000,true,true,'MB_C218_dorest','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Сиденья, центральный подлокотник, вставки в дверных картах','1','0','0',true,'0','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛиАЗ 4292',8210000,85,NULL,24.36,200,'DT'::public."fuel_type",NULL,16,14000,40000,true,true,'LIAZ4292','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','0','0',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Ikarus 256.54',8750000,121,16.66,23.89,300,'DT'::public."fuel_type",NULL,45,12250,35000,true,true,'Ikarus256','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Венгрия'::public."CountryOrigin",0,'0','Средняя часть кузова	
	
	','Нижняя часть кузова','Верхняя часть кузова',false,'Шторки - 150.000 ₽<br>   
Аксессуары - 100.000 ₽<br>
Очки - 250.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛиАЗ-5256.00',9000000,95,NULL,21.9,238,'DT'::public."fuel_type",NULL,24,14000,40000,true,true,'LIAZ5256_00','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова	
	
	','Полосы на кузове','Двери',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('ЛиАЗ-5292.22',9250000,115,22.51,30.49,290,'DT'::public."fuel_type",NULL,22,NULL,10000,false,false,'LIAZ_5292_22','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова','Полосы на кузове','0',false,'Брызговики - 50.000 ₽<br>   
ЭМУ в салоне - 75.000 ₽<br>
Накладка в цвет кузова - 95.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('МАЗ-203',10000000,106,21.33,23.44,300,'DT'::public."fuel_type",NULL,25,5250,15000,true,true,'MAZ_203','Автобус'::public."car_type",false,'Мирный'::public."city",'Беларусь'::public."CountryOrigin",0,'0','1','Ничего не красится','0',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Ikarus 250.59',10250000,115,17.82,22.82,250,'DT'::public."fuel_type",NULL,51,15750,45000,true,true,'Ikarus250','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Венгрия'::public."CountryOrigin",0,'0','Средняя часть кузова	
	
	','Нижняя часть кузова','Верхняя часть кузова',false,'Шторки - 150.000 ₽<br>   
Аксессуары - 100.000 ₽<br>
Очки - 250.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛАЗ-699Р Турист',10500000,100,31.32,31.32,282,'AI92'::public."fuel_type",NULL,41,22750,65000,true,true,'LAZ699_Turist','Автобус'::public."car_type",false,'Мирный'::public."city",'Украина'::public."CountryOrigin",0,'0','1','Полосы на кузове','0',false,'Брызговики - 50.000 ₽<br>  
Доп. брызговики - 45.000 ₽<br> 
Дополнительный свет - 45.000 ₽<br> 
Ранняя светотехника - 150.000 ₽<br>  
Хромированные накладки - 45.000 ₽<br>  
Пластиковая накладка - 100.000 ₽<br>  
Отражатели - 45.000 ₽<br>  
Уплотнительный кожух - 50.000 ₽<br>  
ГБО - 200.000 ₽<br>  
Квадратный номер - 25.000 ₽<br>  
Форточка на двери - 45.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Acura NSX',14300000,308,2.64,17.78,70,'AI95'::public."fuel_type",10,2,42000,120000,true,true,'AcuraNSX','Купе'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",3,'Отделка центральной консоли, вставки в дверные карты, сиденья','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Богдан А092',1850000,105,26.7,29.3,100,'DT'::public."fuel_type",NULL,22,7000,20000,true,true,'BogdanA092','Автобус'::public."car_type",false,'Мирный'::public."city",'Украина'::public."CountryOrigin",0,'0','1','0','0',false,'Дополнительный свет - 25.000 ₽<br>  
Дополнительные зеркала - 45.000 ₽<br>  
Логотип "Богдан" - 10.000 ₽<br>  
Запасное колесо - 100.000 ₽<br>  
Кондиционер - 125.000 ₽<br>  
ГБО - 200.000 ₽<br>  
Брызговики - 30.000 ₽<br>  
Шторки - 75.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ВАЗ-2108',106500,156,12.52,26.93,43,'AI92'::public."fuel_type",10,2,NULL,8000,false,false,'2108','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Руль, торпедо, сиденья, дверные карты, кулиса КПП,<br>центральная консоль, передние и задние стойки,','1','0',NULL,false,'Боковые юбки - 50.000 ₽<br>
Коврики в салоне - 10.000 ₽<br>
Распорки над двигателем - 10.000 ₽<br>
Задние брызговики - 10.000 ₽<br>
Решётка в цвет кузова - 10.000 ₽<br>
Убрать шильдики - 10.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('ЛАЗ-697Р Турист',8500000,80,NULL,24.64,154,'AI92'::public."fuel_type",NULL,33,21000,60000,true,true,'LAZ697_Turist','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Украина'::public."CountryOrigin",0,'0','1','Полосы на кузове','0',false,'Брызговики - 50.000 ₽<br>  
Доп. брызговики - 45.000 ₽<br>  
Ранняя светотехника - 150.000 ₽<br>  
Хромированные накладки - 45.000 ₽<br>  
Пластиковая накладка - 100.000 ₽<br>  
Отражатели - 45.000 ₽<br>  
Уплотнительный кожух - 50.000 ₽<br>  
ГБО - 200.000 ₽<br>  
Квадратный номер - 25.000 ₽<br>  
Форточка на двери - 45.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ПАЗ 672М',4000000,91,NULL,20.87,105,'AI92'::public."fuel_type",NULL,22,7000,20000,true,true,'PAZ_672M','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Полоски на кузове','Колёсные диски',false,'Брызговики - 50.000 ₽<br>  
Вымпелы - 25.000 ₽<br>  
Отражатели - 25.000 ₽<br>  
Антенна - 25.000 ₽<br>  
Утеплитель левый - 15.000 ₽<br>  
ГБО - 150.000 ₽<br>  
Утеплитель правый - 15.000 ₽<br>  
Дверные козырьки - 25.000 ₽<br>  
Хромированные накладки - 25.000 ₽<br>  
Шторки - 75.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ПАЗ-32054 рестайлинг (бензин)',2600000,97,NULL,22.64,105,'AI92'::public."fuel_type",NULL,23,7000,20000,true,true,'PAZ_32054rest_bensin','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Задняя часть рисунка','Задняя часть рисунка',false,'Шторки - 75.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('ПАЗ-320405-04 Вектор Next',3000000,133,16.96,32.01,95,'AI92'::public."fuel_type",NULL,24,5250,15000,true,true,'PAZ_Vector_Next','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Ничего не красится','0',false,'0',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ПАЗ-4230 Аврора',4550000,121,17.5,25.19,105,'DT'::public."fuel_type",NULL,23,12250,35000,true,true,'PAZ_4230_Avrora','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Верхняя и нижняя боковые полосы','Средняя боковая полоса',false,'Шторки - 100.000 ₽<br>   
Аксессуары - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛиАз-677М',10650000,80,NULL,18.44,300,'DT'::public."fuel_type",NULL,24,14000,40000,true,true,'LIAZ677M','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова, передний и задний бампер        
        
        
        
        
        
        
        
        
        ','Нижняя часть кузова','Полоса на кузове',false,'Бампера в цвет юбки - 25.000 ₽<br>  
Квадратный номер - 25.000 ₽<br>  
Брызговики - 50.000 ₽<br>  
Отражатели 1 - 75.000 ₽<br>  
Утеплитель радиатора 1 - 45.000 ₽<br>  
Утеплитель радиатора 2 - 45.000 ₽<br>  
Противотуманки - 75.000 ₽<br>  
Хромированная накладка - 75.000 ₽<br>  
Запасное колесо - 425.000 ₽<br>  
Решётка - 25.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛиАз-677 (ранний)',14250000,80,NULL,18.44,300,'DT'::public."fuel_type",NULL,24,14000,40000,true,true,'LIAZ677_early','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова','Нижняя часть кузова','Полоса на кузове',false,'Бампера в цвет юбки - 25.000 ₽<br>  
Квадратный номер - 25.000 ₽<br>  
Брызговики - 50.000 ₽<br>  
Отражатели 1 - 75.000 ₽<br>  
Утеплитель радиатора 1 - 45.000 ₽<br>  
Утеплитель радиатора 2 - 45.000 ₽<br>  
Противотуманки - 75.000 ₽<br>  
Хромированная накладка - 75.000 ₽<br>  
Запасное колесо - 425.000 ₽<br>  
Решётка - 25.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛиАз-677Э (экспортный)',21550000,80,NULL,18.44,300,'DT'::public."fuel_type",NULL,24,14000,40000,true,true,'LIAZ677_export','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова','Нижняя часть кузова','Полоса на кузове',false,'Бампера в цвет юбки - 25.000 ₽<br>  
Квадратный номер - 25.000 ₽<br>  
Брызговики - 50.000 ₽<br>  
Отражатели 1 - 75.000 ₽<br>  
Утеплитель радиатора 1 - 45.000 ₽<br>  
Утеплитель радиатора 2 - 45.000 ₽<br>  
Противотуманки - 75.000 ₽<br>  
Хромированная накладка - 75.000 ₽<br>  
Запасное колесо - 425.000 ₽<br>  
Решётка - 25.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Cadillac CTS-V',NULL,320,3.09,17.42,72,'AI95'::public."fuel_type",10,4,19250,55000,true,true,'CadillacCTS-V','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Chevrolet El Camino SS',NULL,200,7.01,22.77,766,'AI92'::public."fuel_type",10,2,14000,40000,true,true,'ElCaminoSS','Пикап'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Dodge Challenger SRT Demon',NULL,334,3.05,17.05,70,'AI98'::public."fuel_type",10,2,24500,70000,true,true,'SRTDemon','Купе'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Dodge Charger R/T 1969',NULL,211,5.12,22.89,80,'AI92'::public."fuel_type",10,2,14000,40000,true,true,'RT1969','Купе'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Dodge Charger SRT Hellcat',NULL,320,3.17,20.19,70,'AI95'::public."fuel_type",10,4,15750,45000,true,true,'SRTHellcat','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Ferrari 348 GTB',NULL,277,5.5,24.05,95,'AI98'::public."fuel_type",4,2,22750,65000,true,true,'F348GTB','Купе'::public."car_type",false,'Невский'::public."city",'Италия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ПАЗ-32053 рестайлинг (бензин)',2500000,97,NULL,22.64,105,'AI92'::public."fuel_type",NULL,25,7000,20000,true,true,'PAZ_32053rest_bensin','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','1','Задняя часть рисунка','Задняя часть рисунка',false,'Шторки - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('ЛАЗ-695Н',4695000,85,NULL,26.87,154,'DT'::public."fuel_type",NULL,33,12250,35000,true,true,'LAZ_695N','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова, передний бампер','Нижняя часть кузова, боковые полосы','0',false,'ГБО - 200.000 ₽<br>  
Отражатели - 45.000 ₽<br>  
Уплотнительный кожух - 50.000 ₽<br>  
Хромированные накладки - 45.000 ₽<br>  
Брызговики - 50.000 ₽<br>  
Доп. брызговики - 45.000 ₽<br>  
Дополнительный свет - 45.000 ₽<br>  
Ранняя светотехника - 150.000 ₽<br>  
Ранняя решётка хром - 125.000 ₽<br>  
Пластиковая накладка - 100.000 ₽<br>  
Шторки - 75.000 ₽<br>  
Квадратный номер - 25.000 ₽<br>  
Колпаки - 150.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Москвич 2141S',86000,160,16.0,29.84,40,'AI92'::public."fuel_type",10,4,NULL,5000,false,false,'Moskvich_2141s','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, 
верхняя часть торпедо,
отделка потолка, 
стойки, 
задняя полка','1',NULL,NULL,false,'Багажник на крыше - 50.000 ₽<br>
Мухобойка - 10.000 ₽<br>
Накладки на вентиляцию - 10.000 ₽<br>
Поворотники рестайлинг - 10.000 ₽<br>
Фаркоп и резинка сзади - 10.000 ₽<br>
Туманки - 20.000 ₽<br>
Решётка хром - 10.000 ₽<br>
Снять брызговики - 10.000 ₽<br>
Снять шильдик - 10.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Harley-Davidson Sportster S',2800000,220,2.75,17.85,12,'AI95'::public."fuel_type",NULL,2,9800,28000,true,true,'Harley_Davidson_Sportster','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'США'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,false,'Наклейка на кузов - 30.000 ₽<br> ','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Yamaha WR250F',700000,151,5.55,14.22,8,'AI95'::public."fuel_type",NULL,2,5250,15000,true,true,'YamahaXJ6','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,false,'Наклейка на корпус №1 - 30.000 ₽<br>
Наклейка на корпус №2 - 30.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ЗАЗ-968 "Запорожец"',35000,120,27.58,40.25,25,'AI92'::public."fuel_type",4,2,NULL,4000,false,false,'ZAZ_968','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, дверные карты','1',NULL,NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('Ford F-150 Shelby 2020',NULL,238,3.93,19.44,137,'AI98'::public."fuel_type",15,4,16100,46000,true,true,'F150Shelby','Пикап'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Mercedes-Benz E63 S (W213) рестайлинг',12500000,300,2.87,15.33,66,'AI98'::public."fuel_type",10,4,42700,122000,true,true,'MB_W213_rest','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,false,NULL,NULL,NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Ferrari 348 GTS',NULL,277,5.5,24.05,95,'AI98'::public."fuel_type",4,2,24500,70000,true,true,'F348GTS','Купе'::public."car_type",false,'Невский'::public."city",'Италия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Ford F-450',NULL,142,8.0,18.79,182,'DT'::public."fuel_type",15,4,35000,100000,true,true,'F450','Пикап'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",3,'',NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",90,NULL,'Полный'::public."DriveType"),
	 ('Honda Civic Type-R',NULL,251,5.2,48.48,45,'AI98'::public."fuel_type",10,2,8750,25000,true,true,'CivicTypeR','Хэтчбек'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Передний'::public."DriveType"),
	 ('Honda NSX',NULL,270,4.16,21.98,70,'AI95'::public."fuel_type",5,2,19250,55000,true,true,'HondaNSX','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Nissan Silvia S15 Spec-R',NULL,235,6.2,27.8,65,'AI98'::public."fuel_type",10,2,8400,24000,true,true,'SilviaTypeR','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Porsche 911 Carrera 993',NULL,270,3.89,19.98,74,'AI98'::public."fuel_type",5,2,38500,110000,true,true,'Carrera993','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Audi RS6-R (C8) ABT',NULL,320,2.4,14.58,73,'AI98'::public."fuel_type",10,4,42000,120000,true,true,'RS6ABT','Универсал'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Yamaha XVS400 Drag Star Classic',500000,135,7.4,14.85,15,'AI95'::public."fuel_type",NULL,2,4200,12000,true,true,'Yamaha_XVS400_Drag_Classic','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",0,NULL,'1','Сиденье','Обод колес',false,'Переднее зеркало 1 - 30.000 ₽<br>
Ветровое стекло 2 - 75.000 ₽<br>
Передние дуги 2 - 50.000 ₽<br>
Накладка на бак - 30.000 ₽<br>
Логотип на кузове 1 - 15.000 ₽<br>
Логотип на кузове 2 - 15.000 ₽<br>
Задние ручки - 20.000 ₽<br>
Подножки 1 - 30.000 ₽<br>
Дуги для кофров - 20.000 ₽<br>
Металлические кофры - 75.000 ₽<br>
Спинка 2 - 75.000 ₽<br>
Багажник - 30.000 ₽<br>
Рейлинг на заднем крыле - 20.000 ₽<br>
Заклепки на сидениях - 15.000 ₽<br>','Недоступно',NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Chevrolet Caprice Classic',375000,200,7.4,20.14,87,'AI92'::public."fuel_type",10,4,6300,18000,false,false,'Caprice','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,'Торпедо, руль, дверные карты, сиденья, стойки, отделка потолка, задняя полка, отделка багажника','1','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Задний'::public."DriveType"),
	 ('ВАЗ-1111 "Ока"',55000,130,20.42,34.85,30,'AI92'::public."fuel_type",4,2,NULL,4000,false,false,'1111','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Дверные карты','1',NULL,NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства','{}','PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('Kawasaki Vulcan VN900 Classic',3000000,180,4.2,17.78,20,'AI95'::public."fuel_type",NULL,2,10500,30000,true,NULL,'Kawasaki_Vulcan_VN900_Classic','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,false,'Комплектация LT - 300.000 ₽<br>
Боковые зеркала - 50.000 ₽<br>
Руль с тахометром - 75.000 ₽<br>
Глушитель Vance & Hines - 100.000 ₽<br>
Кофры боковые - 75.000 ₽<br>
Декоративные фонари - 50.000 ₽<br>
Дополнительные фары - 50.000 ₽<br>
Светодиодная фара - 75.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('KIA Stinger GT',2610000,270,4.39,21.67,60,'AI95'::public."fuel_type",10,4,8400,24000,true,true,'Kia_StingerGT','Лифтбек'::public."car_type",false,'Мирный'::public."city",'Южная Корея'::public."CountryOrigin",4,'Частичная отделка центральной консоли, селектор КПП, центральный подлокотник, сиденья, вставки в две','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Ford F-150 Shelby "Silver Skull"',NULL,238,3.93,19.44,137,'AI98'::public."fuel_type",15,4,16100,46000,true,true,'F150SS','Внедорожник'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Ford Mustang Shelby GT500 "Eleanor"',NULL,245,6.0,22.93,76,'AI92'::public."fuel_type",5,2,24500,70000,true,true,'FMSGT500E','Купе'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('GMC Vandura "The Mystery Machine"',NULL,150,11.18,22.44,125,'AI92'::public."fuel_type",15,2,7000,20000,true,true,'GMSWMM','Фургон'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",120,NULL,'Полный'::public."DriveType"),
	 ('Jeep Wrangler Rubicon "Кровавый"',NULL,160,7.25,19.74,70,'AI95'::public."fuel_type",10,2,12600,36000,true,true,'JWRRED','Внедорожник'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Mercedes-Benz 190E (W201) AMG 3.2 "Barolorot"',NULL,247,7.15,25.44,55,'AI92'::public."fuel_type",10,4,6300,18000,false,false,'MB190B','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Mercedes-Benz 190E (W201) AMG 3.2 "Blauschwartz"',NULL,247,7.15,25.44,55,'AI92'::public."fuel_type",10,4,6300,18000,false,false,'MB190Bl','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Mercedes-Benz 190E (W201) AMG 3.2 "Classic Weiss"',NULL,247,7.15,25.44,55,'AI92'::public."fuel_type",10,4,6300,18000,false,false,'MB190CW','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('BMW M4 (G82) CSL',NULL,307,33.7,25.46,59,'AI95'::public."fuel_type",10,2,29750,85000,true,true,'BMWM4CSL','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('BMW M6 (F13) HAMANN "Mirror"',NULL,280,3.49,18.73,80,'AI95'::public."fuel_type",10,2,15750,45000,true,true,'M6Mirror','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Chevrolet Caprice Classic "Purple Rose"',NULL,200,7.4,20.14,87,'AI92'::public."fuel_type",10,4,6300,18000,false,false,'CapricePurle','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Ferrari 488 GTB "Liberty Walk"',NULL,330,2.59,15.97,78,'AI98'::public."fuel_type",5,2,43750,125000,true,true,'F488Liberty','Купе'::public."car_type",false,'Невский'::public."city",'Италия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Honda Civic Type-R "Underground"',NULL,251,5.2,28.48,45,'AI98'::public."fuel_type",10,2,8750,25000,true,true,'Underground','Хэтчбек'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Передний'::public."DriveType"),
	 ('Porsche 911 Turbo S "Тыквоголовая"',NULL,332,2.51,22.37,85,'AI95'::public."fuel_type",5,2,45500,130000,true,true,'911TurboTycva','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Mercedes-Benz 600SEL (W140)',1115000,253,5.6,25.3,100,'AI95'::public."fuel_type",10,4,8400,24000,true,true,'MB_W140','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Недоступно','Кузов (верхняя часть)','0',NULL,false,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Jeep Grand Cherokee (ZJ)',1000000,180,8.4,25.93,87,'AI92'::public."fuel_type",15,4,8750,25000,true,true,'Jeep_GrandCherokee','Внедорожник'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,'Вставки в сиденьях, вставки в дверных картах','1','0',NULL,true,'Шноркель - 20.000 ₽<br>  
Багажник на крышу - 40.000 ₽<br>  
Кенгурятник 1 - 30.000 ₽<br>  
Кенгурятник 2 - 40.000 ₽<br>  
Свет на кенгурятник - 10.000 ₽<br>  
Противотуманки - 10.000 ₽<br>  
Подножка - 20.000 ₽<br>  
Козырёк над лобовым - 20.000 ₽<br>  
Решётка в цвет - 20.000 ₽<br>  
Белые поворотники - 10.000 ₽<br>  
Поворотники на крыльях - 10.000 ₽<br>  
Свет на крыше - 10.000 ₽<br>  
Мухобойка - 10.000 ₽<br>','Доступны все, кроме классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Jeep Wrangler Rubicon',3600000,160,7.25,19.74,70,'AI95'::public."fuel_type",10,2,12600,36000,true,true,'Jeep_Wrangler','Внедорожник'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,'Нижняя часть торпедо, сиденья, дверные карты, отделка центральной консоли, кулиса КПП','1','0',NULL,false,'Чёрная крыша - 100.000 ₽<br>  
Без крыши - 10.000 ₽<br>  
Крыша в цвет - 100.000 ₽<br>  
Лайтбар - 10.000 ₽<br>  
Багажник на крышу - 40.000 ₽<br>  
Крылья в цвет кузова - 40.000 ₽<br>  
Шноркель - 20.000 ₽<br>  
Защита фонарей - 10.000 ₽<br>  
Подножки - 20.000 ₽<br>  
Накладка на капот - 20.000 ₽<br>  
Передний бампер - 100.000 ₽<br>  
Задний бампер - 100.000 ₽<br>','Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('Nissan Leaf',605000,150,11.18,18.43,100,'ELECTRIC'::public."fuel_type",10,4,7000,20000,false,false,'Nissan_Leaf','Хэтчбек'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",NULL,'Руль, торпедо, сиденья, дверные карты, центральный подлокотник, стойки, отделка потолка, задняя полк','1',NULL,NULL,false,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Передний'::public."DriveType"),
	 ('Mitsubishi Lancer Evolution X "Фантом"',NULL,240,4.67,20.57,59,'AI95'::public."fuel_type",10,4,8750,25000,true,true,'LanserFantom','Седан'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Передний'::public."DriveType"),
	 ('BMW M6 (F13)',4600000,280,3.49,18.73,80,'AI95'::public."fuel_type",10,2,15750,45000,true,true,'M6F13','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Вставка в торпедо, сиденья, вставки в дверных картах, отделка центральной консоли','1','0',NULL,true,'Выхлоп Akrapovic - 50.000 ₽<br>  
Канарды - 50.000 ₽<br>  
Задний сплиттер чёрный - 50.000 ₽<br>  
Передний сплиттер карбон - 100.000 ₽<br>  
Задний диффузор Akrapovic - 100.000 ₽<br>  
Задний диффузор Vorsteiner - 100.000 ₽<br>  
Чёрный спойлер - 100.000 ₽<br>  
Карбоновый спойлер - 100.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Mercedes-Benz C63 AMG (W204) "Камуфляж"',NULL,276,3.75,18.52,66,'AI98'::public."fuel_type",10,4,10500,30000,true,true,'MBC63haki','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('KAMAZ-5490 NEO',5900000,112,20.5,24.27,760,'DT'::public."fuel_type",1000,2,13475,38500,true,true,'Kamaz_NEO','Тягач'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'Вставки в сиденьях, матрас спальника			
			
			
		','0','0','0',false,'Заводской спойлер - 120 000 руб<br>
ГБО - 20 000 руб<br>
Лампочки на решётке - 20 000 руб<br>
Решётка на передние фары - 45 000 руб<br>
Чёрная решётка - 40 000 руб<br>
Штора в салон - 20 000 руб<br>
Свет на крыше - 80 000 руб<br>
Боковые юбки - 140 000 руб<br>
Спойлер - 160 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",1000,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz C63 AMG (W204) "Сакура"',NULL,276,3.75,18.52,66,'AI98'::public."fuel_type",10,4,10500,30000,true,true,'MBC63sakura','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ПАЗ-672М "Дедморобус"',NULL,31,NULL,20.87,105,'AI92'::public."fuel_type",NULL,22,7000,20000,true,true,'Dedmorobus','Автобус'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Nissan 400Z Pandem "Senshi"',NULL,256,4.2,17.57,75,'AI95'::public."fuel_type",2,2,23450,67000,true,true,'N400ZSenshi','Купе'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('УАЗ Хантер "Победа"',NULL,134,13.74,26.87,86,'AI92'::public."fuel_type",15,4,3850,11000,false,false,'HunterPobeda','Внедорожник'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('Chevrolet Tahoe LTZ',2340000,200,7.5,26.18,98,'AI95'::public."fuel_type",15,4,8400,24000,true,true,'Tahoe','Внедорожник'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,'Стойки, отделка крыши, отделка шторки люка','1','0',NULL,true,NULL,'Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('Audi R8',14000000,334,2.65,18.39,83,'AI98'::public."fuel_type",0,2,43050,123000,true,true,'AudiR8','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Боковины руля, отделка центральной консоли, вставки в дверные карты, центральный подлокотник, сидень','1','0',NULL,true,NULL,'Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Lamborghini Aventador S Roadster',33000000,350,3.0,22.83,90,'AI98'::public."fuel_type",5,2,52500,150000,true,true,'Avent_roadsterS','Купе'::public."car_type",false,'Мирный'::public."city",'Италия'::public."CountryOrigin",3,'Нижняя часть торпедо, отделка центральной консоли, сиденья, вставки в дверных картах','1','0',NULL,true,'Крыша - 50.000 ₽<br>
Без крыши - 10.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Volvo FH',18500000,125,17.3,24.58,1100,'DT'::public."fuel_type",1000,2,24500,70000,false,true,'Volvo_FH','Тягач'::public."car_type",false,'Мирный'::public."city",'Швеция'::public."CountryOrigin",0,'Вставки в торпедо, вставки в сиденьях			
			
			
	','1','0','0',false,'Боковая юбка - 210 000 руб<br>
Лента на юбку - 20 000 руб<br>
Лампочки на юбку - 60 000 руб<br>
Передняя юбка - 160 000 руб<br>
Автопоезд лампочки - 60 000 руб<br>
Боковое окно чёрное - 120 000 руб<br>
Боковые стойки чёрные - 20 000 руб<br>
Лампочки на решётке - 40 000 руб<br>
Лампочки на бампере - 40 000 руб<br>
Лайтбар на крыше - 195 000 руб<br>
Защита передних фар - 100 000 руб<br>
Уши на капоте - 60 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",1000,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Yamaha XVS400 Drag Star Custom',500000,135,7.4,14.85,15,'AI95'::public."fuel_type",NULL,2,4200,12000,true,true,'Yamaha_XVS400_Drag','Мотоцикл'::public."car_type",false,'Мирный'::public."city",'Япония'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,false,'Переднее зеркало №1 - 30.000 ₽<br>
Переднее зеркало №2 - 40.000 ₽<br>
Ветровое стекло №1 - 50.000 ₽<br>
Ветровое стекло №2 - 75.000 ₽<br>
Передние дуги №1 - 50.000 ₽<br>
Передние дуги №2 - 50.000 ₽<br>
Накладка на бак - 30.000 ₽<br>
Заклепки на бак - 10.000 ₽<br>
Логотип на кузове №1 - 15.000 ₽<br>
Логотип на кузове №2 - 15.000 ₽<br>
Задние ручки - 20.000 ₽<br>
Подножка №1 - 30.000 ₽<br>
Подножка №2 - 30.000 ₽<br>
Подножка №3 - 30.000 ₽<br>
<b>Тюнинг только для Classic версии:</b><br>
Дуги кофров - 20.000 ₽<br>
Металлические кофры - 75.000 ₽<br>
Спинка №1 - 20.000 ₽<br>
Спинка №2 - 75.000 ₽<br>
Багажник - 30.000 ₽<br>
Рейлинг на заднем крыле - 20.000 ₽<br>
Заклепки на сиденьях - 10.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'MOTO'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Audi RS6 C8 "Бабушкин свитер"',0,285,2.75,14.31,73,'AI98'::public."fuel_type",10,4,42000,120000,true,true,'AUDIRS6SVITER','Универсал'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('BMW M3 (E46) Most Wanted',0,250,4.42,22.0,63,'AI95'::public."fuel_type",10,2,10500,30000,true,true,'BMWM3MW','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('BMW M3 (E46) Most Wanted Edition',0,250,4.42,22.0,63,'AI95'::public."fuel_type",10,2,10500,30000,true,true,'BMWM3MWE','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('BMW M5 (E60) HAMANN',0,321,4.0,21.55,70,'AI98'::public."fuel_type",10,4,11550,33000,true,false,'BMWE60HAM','Седан'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('BMW 850i Koenig Specials KS8',0,300,4.53,25.35,90,'AI95'::public."fuel_type",10,2,10500,30000,true,true,'BMW850iKS8','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Chevrolet Camaro ZL1 "Spooky"',0,318,2.95,17.72,72,'AI98'::public."fuel_type",10,2,14350,41000,true,true,'CAMAROSPOOKY','Купе'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Chevrolet El Camino SS "Dia de los Muertos"`',0,200,7.01,22.77,76,'AI92'::public."fuel_type",10,2,14000,40000,true,true,'ELCAMINOS','Пикап'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Dodge Charger SRT Hellcat "10th Anniversary"',0,320,3.17,20.19,70,'AI95'::public."fuel_type",10,2,15750,45000,true,true,'DODGESRT','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Dodge Charger SRT Hellcat "Demon''s Spring"',0,320,3.17,20.19,70,'AI95'::public."fuel_type",10,2,15750,45000,true,true,'DODGESRTD','Седан'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Indian Chief Dark Horse "Fire Chopper"',NULL,192,5.14,64.9,15,'AI92'::public."fuel_type",NULL,NULL,15750,45000,true,true,'ICDHFC','Мотоцикл'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Indian Chief Dark Horse "The Lone Wolf"',NULL,192,5.14,64.9,15,'AI92'::public."fuel_type",NULL,NULL,15750,45000,true,true,'ICDHL','Мотоцикл'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('Ikarus 260 (ширмовые двери)',6500000,90,NULL,21.91,250,'DT'::public."fuel_type",NULL,22,14000,40000,true,true,'Ikarus260_shirma','Автобус'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова, двери	
	
	
	
	
	
	
	
	
	
	
	','Средняя часть кузова','Нижняя часть кузова',false,'Дополнительные фонари 1 - 50.000 ₽<br>  
Дополнительные фонари 2 - 50.000 ₽<br>  
Дополнительные зеркала - 25.000 ₽<br>  
Хромированная накладка 1 - 25.000 ₽<br>  
Хромированная накладка 2 - 25.000 ₽<br>  
Отражатели - 50.000 ₽<br>  
Вымпелы - 25.000 ₽<br>  
Шторки - 100.000 ₽<br>  
Огни автопоезда - 75.000 ₽<br>  
Уплотнительный кожух - 50.000 ₽<br>  
Табличка "Заказной" - 25.000 ₽<br>  
Брызговики - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW M5 (F90) LCI',13000000,305,2.82,15.62,68,'AI98'::public."fuel_type",10,4,43750,125000,true,true,'M5F90_LCI','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Нижняя часть торпедо, частичная отделка центральной консоли, центральный подлокотник, сиденья, вставки в дверных картах','1','0','0',true,'Диффузор в цвет кузова - 100.000 ₽<br>
Карбоновый диффузор - 150.000 ₽<br>
Спойлер в цвет кузова - 100.000 ₽<br>
Спойлер CS - 150.000 ₽<br>
Юбилейные шильдики - 25.000 ₽<br>
Выхлоп "Acrapovic" - 200.000 ₽<br>
Накладки зеркал (карбон) - 100.000 ₽<br>
Карбоновый капот - 300.000 ₽<br>
Накладки "M Perfomance" - 100.000 ₽<br>
Рестайлинговые фонари (Недоступно для установки) - 150.000 ₽<br>
Сплиттер "M Perfomance" - 150.000 ₽<br>
Сплиттер CS - 150.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('RAM TRX',15000000,190,4.5,19.1,125,'AI98'::public."fuel_type",15,4,42000,120000,true,true,'RAM_TRX','Пикап'::public."car_type",true,'Мирный'::public."city",'США'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Li L9',7500000,180,5.1,21.4,100,'AI98'::public."fuel_type",15,4,26250,75000,false,false,'Li9','Кроссовер'::public."car_type",true,'Мирный'::public."city",'Китай'::public."CountryOrigin",NULL,'Нижняя часть торпедо, центральный подлокотник, дверные карты, сиденья','1',NULL,NULL,true,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Tesla Model X Plaid',14000000,262,2.79,17.83,100,'ELECTRIC'::public."fuel_type",15,4,49000,140000,true,true,'TeslaX_Plaid','Кроссовер'::public."car_type",true,'Мирный'::public."city",'США'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('BMW M8 Competition "Radio Legend"',0,312,2.8,18.71,68,'AI98'::public."fuel_type",10,2,50750,145000,true,true,'BMWM8RL','Купе'::public."car_type",false,'Невский'::public."city",'Германия'::public."CountryOrigin",2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Полный'::public."DriveType"),
	 ('ГАЗ 3102 "Защитник"',NULL,250,4.75,23.91,70,'AI92'::public."fuel_type",10,4,4900,14000,false,false,'GAZ3102','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ГАЗ-13 "Чайка" (9 Мая)',NULL,160,16.0,37.1,80,'AI92'::public."fuel_type",10,4,21000,60000,true,true,'GAZ13Chayca','Седан'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','CONTAINER'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Indian Chief Dark Horse "Vintage"',NULL,192,5.14,64.9,15,'AI92'::public."fuel_type",NULL,NULL,15750,45000,true,true,'ICDHV','Мотоцикл'::public."car_type",false,'Невский'::public."city",'США'::public."CountryOrigin",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','EXCLUSIVE'::public."TransportClass",NULL,NULL,'Задний'::public."DriveType"),
	 ('ВАЗ-2113',163000,185,11.33,29.71,43,'AI92'::public."fuel_type",10,2,3850,11000,false,false,'2113','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья, дверные карты','1','0',NULL,false,'Убрать шильдики - 10.000 ₽<br>
Убрать спойлер - 20.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('УАЗ-3909',650000,129,16.69,29.03,70,'AI92'::public."fuel_type",15,7,12000,65000,true,false,'UAZ_3909','Микроавтобус'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,NULL,'1','0','',true,'Брызговики - 15.000 ₽<br> СМУ - 75.000 ₽<br>','Доступны все','{}','PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Полный'::public."DriveType"),
	 ('Porsche 911 GT3 (992)',22000000,318,NULL,NULL,64,'AI98'::public."fuel_type",10,2,45500,130000,true,true,'GT3_992','Купе'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Mercedes-Benz GLE Coupe 450d',13900000,250,5.6,24.7,85,'DT'::public."fuel_type",10,4,47250,135000,true,true,'GLE_450d','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в дверных картах, отделка центральной консоли, сиденья','1',NULL,NULL,true,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('УАЗ-469',320000,120,20.02,26.29,78,'AI92'::public."fuel_type",10,4,3500,10000,false,false,'Uaz469','Внедорожник'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Сиденья','1','0',NULL,true,'Багажник на крыше - 60.000 ₽</br>
Веткоотбойники - 10.000 ₽</br>
Шноркель - 20.000 ₽</br>
Подножки - 20.000 ₽</br>
Фара-искатель - 20.000 ₽</br>
Хром на детали кузова - 20.000 ₽</br>
Кенгурятник - 30.000 ₽</br>
Арки на крылья - 30.000 ₽</br>
Чехол запаски - 20.000 ₽</br>
Рейка - 10.000 ₽</br>
Крыша - 5.000 ₽<br>Без крыши - 3.000 ₽</br>','Доступны все ',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Полный'::public."DriveType"),
	 ('ВАЗ-2108 Рестайлинг',130000,156,12.51,26.92,43,'AI92'::public."fuel_type",10,2,NULL,8000,false,false,'2108Rest','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, передние и задние стойки, от','1','0',NULL,false,'Боковые юбки - 50.000 ₽<br>
Коврики в салоне - 10.000 ₽<br>
Распорки над двигателем - 10.000 ₽<br>
Задние брызговики - 10.000 ₽<br>
Решётка в цвет кузова - 10.000 ₽<br>
Убрать шильдики - 10.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('ВАЗ-2109',118000,165,14.03,27.92,43,'AI92'::public."fuel_type",10,4,NULL,8000,false,false,'2109','Хэтчбек'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Руль, торпедо, сиденья, дверные карты, кулиса КПП, центральная консоль, стойки, отделка потолка','1','0',NULL,false,'Боковые юбки - 50.000 ₽<br>
Коврики в салоне - 10.000 ₽<br>
Распорки над двигателем - 10.000 ₽<br>
Задние брызговики - 10.000 ₽<br>
Решётка в цвет кузова - 10.000 ₽<br>
Убрать шильдики - 10.000 ₽<br>','Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Передний'::public."DriveType"),
	 ('ИЖ 21251 Комби',100000,140,15.95,32.08,46,'AI92'::public."fuel_type",10,4,NULL,5000,false,false,'21251Kombi','Универсал'::public."car_type",false,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Частичная отделка салона и багажника, 
сиденья, 
дверные карты','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW X6 M (F96)',14800000,290,3.9,19.91,83,'AI98'::public."fuel_type",15,4,47250,135000,true,true,'X6M_F96','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в дверные карты, сиденья, обшивка центральной консоли, центральный подлокотник.','1',NULL,NULL,true,'Панорама - 300.000 ₽<br>Багажник на крыше - 100.000 ₽<br> Выхлоп M Pefomance - 150.000 ₽<br> Выхлоп Akrapovic - 200.000 ₽<br> Зеркала в чёрном цвете - 50.000 ₽<br> Зеркала в карбоне - 100.000 ₽<br> Боковые юбки M Perfomance - 10.000 ₽<br> Черный диффузор - 100.000 ₽<br> Карбоновый диффузор  - 150.000 ₽<br> ',NULL,'{}','PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('Lamborghini Huracan EVO',22000000,325,NULL,NULL,80,'AI98'::public."fuel_type",4,2,49700,142000,true,true,'Huracan_EVO','Купе'::public."car_type",false,'Мирный'::public."city",'Италия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Daewoo Matiz',125000,145,NULL,NULL,35,'AI92'::public."fuel_type",10,4,NULL,8000,false,false,'Matiz','Хэтчбек'::public."car_type",false,'Невский'::public."city",'Южная Корея'::public."CountryOrigin",4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('BMW X5 M (F95)',15200000,290,3.9,19.91,83,'AI98'::public."fuel_type",15,4,47250,135000,true,true,'X5M_F95','Кроссовер'::public."car_type",true,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Нижняя часть торпедо, вставки в дверные карты, сиденья, обшивка центральной консоли, центральный подлокотник','1',NULL,NULL,true,'Панорама - 300.000 ₽<br>Багажник на крыше - 40.000 ₽<br> Накладка на крыле в карбон - 50.000 ₽<br>Выхлоп M Pefomance - 150.000 ₽<br> Выхлоп Akrapovic - 200.000 ₽<br> Зеркала в чёрном цвете - 50.000 ₽<br> Зеркала в карбоне - 100.000 ₽<br> Сплиттер  - 50.000 ₽<br> Спойлер M Perfomance - 150.000 ₽<br> Черный диффузор - 100.000 ₽<br> Карбоновый диффузор  - 150.000 ₽<br>',NULL,'{}','PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Bugatti Chiron Super Sport',130000000,440,NULL,NULL,100,'AI100'::public."fuel_type",5,2,140000,400000,true,true,'BugattiCSS','Купе'::public."car_type",false,'Мирный'::public."city",'Франция'::public."CountryOrigin",1,NULL,NULL,NULL,NULL,true,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Ferrari Purosangue',40000000,311,3.3,19.46,100,'AI98'::public."fuel_type",10,4,115500,165000,true,true,'Purosangue','Кроссовер'::public."car_type",true,'Мирный'::public."city",'Италия'::public."CountryOrigin",2,'Верхняя и нижняя часть торпедо, дверные карты, сиденья, центральная задняя консоль, отделка задней полки','1',NULL,NULL,true,'Значок Ferrari - 10.000 ₽<br>',NULL,'{}','PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Jaguar F-Type R',5300000,300,NULL,NULL,72,'AI98'::public."fuel_type",10,2,NULL,NULL,false,false,'FType','Купе'::public."car_type",false,'Мирный'::public."city",'Англия'::public."CountryOrigin",3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}','PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Honda Accord',710000,221,7.49,27.68,65,'AI95'::public."fuel_type",10,4,6300,18000,true,true,'Accord8','Седан'::public."car_type",false,'Невский'::public."city",'Япония'::public."CountryOrigin",4,'Нижняя часть торпедо, дверные карты, отделка центральной консоли, сиденья, ковролин, стойки, отделка','1','0',NULL,true,NULL,'Доступны все, кроме внедорожных',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Передний'::public."DriveType"),
	 ('Mercedes-Benz Sprinter Classic 411 CDI (Base)',2650000,140,13.8,28.0,75,'DT'::public."fuel_type",NULL,15,9450,27000,true,true,'MB_Sprinter411_Base','Микроавтобус'::public."car_type",false,'Мирный'::public."city",'Германия'::public."CountryOrigin",0,'0','1','0','0',false,'Телевизор в салон - 30.000 ₽<br>  
Фаркоп-подножка - 45.000 ₽<br>  
Кенгурятник хром - 100.000 ₽<br>  
Кенгурятник чёрный - 100.000 ₽<br>  
Дополнительный свет - 45.000 ₽<br>  
Брызговики - 30.000 ₽<br>  
Кондиционер - 125.000 ₽<br>  
Подножка сбоку - 75.000 ₽<br>  
Накладки на арки - 45.000 ₽<br>  
Защита фонарей (перед) - 75.000 ₽<br>  
Защита фонарей (зад) - 75.000 ₽<br>  
Багажник на крыше - 275.000 ₽<br>  
Багажник на крыше (кондиционер) - 275.000 ₽<br>  
Наклейка на дверь - 10.000 ₽<br>  
Дефлектор капота - 30.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz Sprinter Classic 411 CDI (AS3)',3000000,140,13.8,28.0,75,'DT'::public."fuel_type",NULL,15,9450,27000,true,true,'MB_Sprinter411_AS3','Микроавтобус'::public."car_type",false,'Мирный'::public."city",'Германия'::public."CountryOrigin",0,'0','1','0','0',false,'Телевизор в салон - 30.000 ₽<br>  
Фаркоп-подножка - 45.000 ₽<br>  
Кенгурятник хром - 100.000 ₽<br>  
Кенгурятник чёрный - 100.000 ₽<br>  
Дополнительный свет - 45.000 ₽<br>  
Брызговики - 30.000 ₽<br>  
Кондиционер - 125.000 ₽<br>  
Подножка сбоку - 75.000 ₽<br>  
Накладки на арки - 45.000 ₽<br>  
Защита фонарей (перед) - 75.000 ₽<br>  
Защита фонарей (зад) - 75.000 ₽<br>  
Багажник на крыше - 275.000 ₽<br>  
Багажник на крыше (кондиционер) - 275.000 ₽<br>  
Наклейка на дверь - 10.000 ₽<br>  
Дефлектор капота - 30.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('УАЗ Хантер',550000,134,13.74,26.87,86,'AI92'::public."fuel_type",15,4,3850,11000,false,false,'UAZ_hanter','Внедорожник'::public."car_type",true,'Невский'::public."city",'СССР/Россия'::public."CountryOrigin",4,'Вставки в сиденьях','1','0',NULL,false,'Накладка на бензобак - 10.000 ₽<br>
Подножка - 30.000 ₽<br>
Кенгурятник 1 - 25.000 ₽<br>
Кенгурятник 2 - 25.000 ₽<br>
Фара-искатель - 15.000 ₽<br>
Маскировка для фонарей - 25.000 ₽<br>
Тросы - 30.000 ₽<br>
Защита на окна - 15.000 ₽<br>
Шноркель - 30.000 ₽<br>
Накладка на глушитель 1 - 15.000 ₽<br>
Накладка на глушитель 2 - 15.000 ₽<br>
Расширители арок 1 - 50.000 ₽<br>
Воздухозаборник - 15.000 ₽<br>
Защита передних фонарей - 15.000 ₽<br>
Защита задних фонарей - 15.000 ₽<br>
Защита картера двигателя - 15.000 ₽<br>
Экспедиционный багажник - 150.000 ₽<br>
Набор освещения 1 - 50.000 ₽<br>
Набор освещения 2 - 50.000 ₽<br>
Брызговики - 10.000 ₽<br>
Расширители арок 2 - 50.000 ₽<br>
Свет на кенгурятник 1 - 25.000 ₽<br>
Свет на кенгурятник 2 - 25.000 ₽<br>','Доступны все ',NULL,'PASSENGER'::public."TransportClass",NULL,'АвтоМакс'::public."Showroom",'Полный'::public."DriveType");
INSERT INTO public.transport (name_auto,price,full_speed,speed_100_time,speed_max_time,volume_tank,fuel_type,slots,seats,lite_insurance,repair_without_ins,has_stand_ins,has_exc_ins,unique_name,type_body,epp,city,country,stage_counter,paint_inter,paint_first,paint_second,paint_third,antichrome,accessories,rims,gos_cost_old,"class",units,showroom,"driveType") VALUES
	 ('КАвЗ-3270',1350000,90,NULL,17.47,105,'DT'::public."fuel_type",NULL,20,7000,20000,true,true,'KAVZ_3270','Автобус'::public."car_type",true,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','Верхняя часть кузова, передняя решётка','Нижняя часть кузова, передние крылья, капот','Полоски на кузове',false,'Шторки - 75.000 ₽<br>  
Утеплитель радиатора - 50.000 ₽<br>  
Аксессуары - 50.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Богдан А09302',2200000,110,25.9,33.1,120,'DT'::public."fuel_type",NULL,25,8750,25000,true,true,'BogdanA093_02','Автобус'::public."car_type",false,'Мирный'::public."city",'Украина'::public."CountryOrigin",0,'0','1','0','0',false,'Дополнительный свет - 25.000 ₽<br>  
Дополнительные зеркала - 45.000 ₽<br>  
Логотип "Богдан" - 10.000 ₽<br>  
Запасное колесо - 100.000 ₽<br>  
Кондиционер - 125.000 ₽<br>  
ГБО - 200.000 ₽<br>  
Брызговики - 30.000 ₽<br>  
Шторки - 75.000 ₽<br>',NULL,NULL,'PUBLIC'::public."TransportClass",NULL,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Hummer H2',6500000,180,9.98,28.46,121,'AI95'::public."fuel_type",15,4,22750,65000,true,true,'HummerH2','Внедорожник'::public."car_type",true,'Невский'::public."city",'США'::public."CountryOrigin",4,'Нижняя часть торпедо, дверные карты, стойки, центральный подлокотник, отделка бажника, отделка потол','1','0',NULL,true,'Дополнительный порог - 50.000 ₽<br>  
Защита задних фонарей - 10.000 ₽<br>  
Рейлинги на крышу - 30.000 ₽<br>  
Рейлинги на крышу + свет - 35.000 ₽<br>  
Рейлинги на крышу + свет 2 - 40.000 ₽<br>  
Кенгурятник на капот - 15.000 ₽<br>  
Свет на кенгурятник - 10.000 ₽<br>  
Зеркала - 20.000 ₽<br>','Доступны все, кроме: классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'РОФЛ'::public."Showroom",'Полный'::public."DriveType"),
	 ('КамАЗ 53212 Тент',1920000,90,NULL,23.68,450,'DT'::public."fuel_type",350,2,5950,17000,true,true,'KAMAZ53212_tent','Грузовик'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','0','Передняя панель решётки радиатора','Кузов (без тента)',false,'Уши кастомные - 20 000 руб<br>
Бампер кастомный - 60 000 руб<br>
Спойлер на крышу - 100 000 руб<br>
Шторы в салон - 40 000 руб<br>
Брызговики задние - 20 000 руб<br>
Визор - 40 000 руб<br>
Наклейка и вымпел - 20 000 руб<br>
Брызговики на бампере - 20 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",350,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('КамАЗ 53212 Контейнер',2190000,90,NULL,23.68,450,'DT'::public."fuel_type",360,2,6755,19300,true,true,'KAMAZ53212_kont','Грузовик'::public."car_type",false,'Мирный'::public."city",'СССР/Россия'::public."CountryOrigin",0,'0','0','Передняя панель решётки радиатора','Контейнер',false,'Уши кастомные - 20 000 руб<br>
Бампер кастомный - 60 000 руб<br>
Спойлер на крышу - 100 000 руб<br>
Шторы в салон - 40 000 руб<br>
Брызговики задние - 20 000 руб<br>
Визор - 40 000 руб<br>
Наклейка и вымпел - 20 000 руб<br>
Брызговики на бампере - 20 000 руб<br>',NULL,NULL,'CARGO'::public."TransportClass",360,'Тихий Огонёк'::public."Showroom",'Задний'::public."DriveType"),
	 ('Mercedes-Benz C200 (W206)',6000000,246,7.0,23.0,50,'AI98'::public."fuel_type",10,4,23450,67000,true,true,'MB_C200','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",4,'Боковины руля, центральный подлокотник, сиденья, вставки в дверных картах','1',NULL,NULL,true,'Пороги чёрные - 100.000 ₽<br>  
Пороги карбон - 150.000 ₽<br>  
Пороги кованый карбон - 175.000 ₽<br>  
Панорамная крыша - 300.000 ₽<br>  
Фары - 150.000 ₽<br>  
Решётка - 100.000 ₽<br>  
Спойлер 1 - 100.000 ₽<br>  
Спойлер 2 - 100.000 ₽<br>  
Спойлер 3 - 100.000 ₽<br>  
Спойлер 1 (карбон) - 150.000 ₽<br>  
Спойлер 2 (карбон) - 150.000 ₽<br>  
Спойлер 3 (карбон) - 150.000 ₽<br>  
Спойлер 1 (ков. карбон) - 175.000 ₽<br>  
Спойлер 2 (ков. карбон) - 175.000 ₽<br>  
Спойлер 3 (ков. карбон) - 175.000 ₽<br>  
Сплиттер чёрный - 100.000 ₽<br>  
Сплиттер карбон - 150.000 ₽<br>  
Сплиттер кованый карбон - 175.000 ₽<br>  
Задний бампер (чёрный) - 150.000 ₽<br>  
Диффузор - 50.000 ₽<br>  
Задний бампер карбон - 200.000 ₽<br>  
Диффузор - 50.000 ₽<br>  
Задний бампер ков. карбон - 215.000 ₽<br>  
Диффузор - 50.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Задний'::public."DriveType"),
	 ('BMW M5 (F90)',9240000,305,2.83,15.62,68,'AI98'::public."fuel_type",10,4,35700,102000,true,true,'M5F90','Седан'::public."car_type",false,'Приволжск'::public."city",'Германия'::public."CountryOrigin",3,'Нижняя часть торпедо, частичная отделка центральной консоли, центральный подлокотник, сиденья, вставки в дверных картах','1','0','0',true,'Диффузор в цвет кузова - 100 000 ₽<br>
Карбоновый диффузор - 150 000 ₽<br>
Спойлер в цвет кузова - 100 000 ₽<br>
Спойлер CS - 150 000 ₽<br>
Юбилейные шильдики - 25 000 ₽<br>
Выхлоп "Acrapovic" - 200 000 ₽<br>
Накладки зеркал (карбон) - 100 000 ₽<br>
Карбоновый капот - 300 000 ₽<br>
Накладки "M Perfomance" - 100 000 ₽<br>
Рестайлинговые фонари - 150 000 ₽<br>
Сплиттер "M Perfomance" (Недоступно для установки) - 150 000 ₽<br>
Сплиттер CS (Недоступно для установки) - 150 000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'Mercury-Auto'::public."Showroom",'Полный'::public."DriveType"),
	 ('Ferrari 488 GTB',17350000,330,2.59,15.97,78,'AI98'::public."fuel_type",5,2,43750,125000,true,true,'488GTB','Купе'::public."car_type",false,'Мирный'::public."city",'Италия'::public."CountryOrigin",3,'Боковины руля, нижняя часть торпедо, отделка центральной консоли, сиденья, вставки в дверные карты, ','1','0',NULL,false,'Цветная крыша - 5.000 ₽<br>
Чёрная крыша - 100.000 ₽<br>','Доступны все, кроме: внедорожных, классических и отечественного производства',NULL,'PASSENGER'::public."TransportClass",NULL,'World of Auto'::public."Showroom",'Задний'::public."DriveType");
