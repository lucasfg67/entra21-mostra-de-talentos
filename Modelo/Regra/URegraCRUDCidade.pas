unit URegraCRUDCidade;

interface

uses
  URegraCRUD
 ,URepositorioDB
 //,URepositorioCidade
 ,UEntidade
 ;

type
  TRegraCRUDCidade  = class (TRegraCRUD)
  public
    constructor Create ; override ;
  end;



implementation

{ TRegraCRUDCidade }

constructor TRegraCRUDCidade.Create;
begin
  inherited;
  //FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioCidade.Create);
end;

end.
