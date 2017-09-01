unit URegraCRUDPais;

interface

uses
  URegraCRUD
 ,URepositorioDB
// ,URepositorioPais
 ,UEntidade
 ;

 type
  TRegraCRUDPais  = class (TRegraCRUD)
  public
    constructor Create ; override ;
  end;
implementation

{ TRegraCRUDPais }

constructor TRegraCRUDPais.Create;
begin
  inherited;
//  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioPais.Create);
end;

end.
