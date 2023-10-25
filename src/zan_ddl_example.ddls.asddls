@AbapCatalog.sqlViewName: 'ZAN_V_TEST1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Örnek1'
define view ZAN_DDL_EXAMPLE as select from ekko
inner join ekpo on ekpo.ebeln = ekko.ebeln
inner join mara on mara.matnr = ekpo.matnr
inner join makt on makt.matnr = mara.matnr
               and makt.spras = $session.system_language
inner join lfa1 on lfa1.lifnr = ekko.lifnr
       
{
ekko.ebeln,
ekpo.ebelp,
ekpo.matnr,
makt.maktx,
ekpo.werks,
ekpo.lgort,
ekpo.meins,
lfa1.lifnr,
lfa1.name1 as ad1,
concat( lfa1.stras ,concat(' ',lfa1.mcod3 ) ) as satici_adres
    
}
