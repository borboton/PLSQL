select d.ip, d.mac, d.sysDescr from scannet.cm_discovery_duplicadas d
	inner join scannet.mac_duplicadas md on ( md.mac_cm=d.mac )	
	inner join scannet.cmts_discovery ts on (ts.ip_cm=d.ip)
	
	and md.mac_cm='001ade679fd2' 
			
select d.ip, d.mac, m.nombre_cmts, c.id_cmts, c.id_cmts from scannet.cm_discovery_duplicadas d 
	inner join scannet.cmts_discovery c on (c.ip_cm = d.ip ) 
	inner join scannet.cmts m on (m.id_cmts=c.id_cmts)
	where c.fecha_insercion >= DATE(SYSDATE()) and d.mac = '001ade67100e'
	order by d.mac limit 10 
	
select * from scannet.cm where id_nodo like 'CAR138%' and validado = 1 

select * from cm.snmpc order by last_change desc limit 10 
