unit URegraCRUDEstado;

interface
uses
  URegraCRUD
 ,URepositorioDB
// ,URepositorioEstado
 ,UEntidade
 ;

 type
  TRegraCRUDEstado  = class (TRegraCRUD)
  public
    constructor Create ; override ;
  end;
implementation

{ TRegraCRUDEstado }

constructor TRegraCRUDEstado.Create;
begin
  inherited;
//  FRepositorioDB := TRepositorioDB<TENTIDADE>(TRepositorioEstado.Create);
end;

end.
