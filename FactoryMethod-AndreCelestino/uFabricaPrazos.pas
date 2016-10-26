unit uFabricaPrazos;

interface

uses
  uInterfaces;

type
  TFabricaPrazos = class(TInterfacedObject, IFactoryMethod)
    function ConsultarPrazo(const psPrazo: string): ITipoPrazo;
  end;

implementation

uses
  uTipoPrazos;

{ TFabricaPrazos }

function TFabricaPrazos.ConsultarPrazo(const psPrazo: string): ITipoPrazo;
begin
  // Factory Method
  // A decis�o de qual m�todo criar fica a crit�rio deste m�todo

  if psPrazo = 'Mensal' then
    result := TPrazoMensal.Create
  else if psPrazo = 'Semestral' then
    result := TPrazoSemestral.Create
  else if psPrazo = 'Anual' then
    result := TPrazoAnual.Create;
end;

end.
