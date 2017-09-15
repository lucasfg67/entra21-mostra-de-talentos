unit UOs;

interface

uses
    UEntidade
   ,UCliente
   ,UEquipamento
    ;

type
  TOS = class  (TENTIDADE)
  public
    DATA_ENTRADA      : Tdate;
    DESCRICAO_SERVICO : String;
    CLIENTE           : TCLIENTE;
    EQUIPAMENTO       : TEQUIPAMENTO;

    constructor Create;  override;
    destructor  Destroy; override;


  end;

const
  TBL_OS                   = 'OS';
  FLD_OS_DATA_ENTRADA      = 'DATA_ENTRADA';
  FLD_OS_DESCRICAO_SERVICO = 'DESCRICAO_SERVICO';
  FLD_OS_ID_CLIENTE        = 'ID_CLIENTE';
  FLD_OS_ID_EQUIPAMENTO    = 'ID_EQUIPAMENTO';

resourcestring
  STR_OS = 'Os';


implementation

uses
    SysUtils
   ,Dialogs
   ;

{ TOS }

constructor TOS.Create;
begin
  inherited;
  CLIENTE:= TCLIENTE.Create;
  EQUIPAMENTO := TEQUIPAMENTO.Create
end;

destructor TOS.Destroy;
begin
  FreeAndNil(CLIENTE);
  FreeAndNil(EQUIPAMENTO);
  inherited;
end;

end.
