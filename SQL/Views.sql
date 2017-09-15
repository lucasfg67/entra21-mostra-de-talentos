create view vw_cidade as
select c.id           as "Cód."
	 , c.nome 		  as "Cidade"
	 , e.nome	 	  as "Estado"
  from cidade c inner join estado e on (e.id = c.id_estado);
  
 create view vw_cliente as
 select cl.id           as "Cód."
       ,cl.nome         as "Nome"
       ,cl.solicitante  as "Solicitante"
       ,cl.cnpj_cpf     as "CNPJ/CPF"
       ,cl.telefone     as "Telefone"
       ,c.nome		    as "Cidade"
       ,cl.endereco     as "Endereço"
       ,cl.tipo_pessoa  as "Tipo de Pessoa"
    from cliente cl inner join cidade c on (c.id = cl.id_cidade); 
    
 create view vw_usario as 
 select id    as "Cód."
 	   ,nome  as "Nome"
 	   ,senha as "Senha"
    from usuario;
    
 create view vw_material as 
 select id		  	     as "Cód."
       ,descricao        as "Decrição"
       ,valor_unitario   as "Valor Unitario"
    from material;
    
    
create view vw_equipamento as 
select id                  as "Cód."
	  ,nome                as "Nome"
	  ,marca               as "Marca"
	  ,n_serie             as "Número de Série"
  from equipamento;
  
 
 create view vw_tecnico as 
 select id              as "Cód."
       ,nome            as "Nome"
       ,valor_hora	    as "Preço Hora"
    from tecnico;
    
 
 create view vw_os           as 
 select os.id                as "Cód."
       ,os.data_entrada      as "Entrada"
       ,os.descricao_servico as "Descrição do Serviço"
       ,c.nome	             as "Cliente"
       ,e.nome		         as "Equipamento"
    from os  inner join cliente c on (c.id = os.id_cliente) 
    inner join equipamento e  on (e.id = os.id_equipamento);
    
    select * from vw_os;
 

 
 create view vw_pais as 
 select id           as "Cód."
 	   ,nome         as "País"
 	   ,sigla        as "Sigla"
 	from pais;
 	
 	
 create view vw_estado as 
 select e.id           as   "Cód."
       ,e.nome         as   "Estado"
       ,e.uf           as   "UF"
       ,p.nome         as   "Pais"
    from estado e inner join pais p on (p.id = e.id_pais);
    
    
   