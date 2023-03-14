unit Backend.UController.Cidadao;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  Backend.UController.Base,
  Backend.UEntity.Cidadao;

type
  [SwagPath('cidadao', 'Cidad�o')]
  TControllerCidadao = class(TControllerBase)
    private
    public
      [SwagGET('Listar Cidad�os', True)]
      [SwagResponse(200, TCidadao, 'Informa��es do Cidad�o', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGET('{id}', 'Procurar um Cidad�o')]
      [SwagParamPath('id', 'id do Cidad�o')]
      [SwagResponse(200, TCidadao, 'Informa��es do Cidad�o')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPOST('Cadastrar Novo Cidad�o')]
      [SwagParamBody('Informa��es do Cidadao', TCidadao)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Excluir o Registro de um Cidad�o')]
      [SwagParamPath('id', 'Id do Cidad�o')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      //PESQUISAR IMPLEMENTA��O
      [SwagPATCH('{id}', 'Alterar o Registro de um Cidad�o')]
      [SwagParamPath('id', 'id do Cidad�o')]
      [SwagParamPath('coluna', 'Coluna da tabela Cidad�o')]
      [SwagParamPath('valor', 'Novo Valor da colunda da tabela Cidad�o')]
      [SwagResponse(200, TCidadao, 'Informa��es do Cidad�o')]
      [SwagResponse(404)]
      class procedure Patch(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPATCH('{id}', 'Alterar n�mero de Pontos de um Cidad�o')]
      [SwagParamPath('id', 'id do Cidad�o')]
      [SwagParamPath('valor', 'Novo Valor da colunda da tabela Cidad�o')]
      [SwagResponse(200, TCidadao, 'Informa��es do Cidad�o')]
      [SwagResponse(404)]
      class procedure PatchPontuacao(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;
  end;


implementation

uses
  Backend.UDAO.Intf,
  Backend.UDAO.Cidadao,
  System.JSON,
  System.SysUtils;

{ TControllerCidadao }

class procedure TControllerCidadao.Delete(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOCidadao.Create;
  inherited;
end;

class procedure TControllerCidadao.Get(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOCidadao.Create;
  inherited;

end;

class procedure TControllerCidadao.Gets(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOCidadao.Create;
  inherited;

end;

class procedure TControllerCidadao.Post(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOCidadao.Create;
  inherited;

end;

class procedure TControllerCidadao.Patch(Req: THorseRequest; Res: THorseResponse;
  Next: TProc);
begin
  FDAO := TDAOCidadao.Create;
  inherited;

end;

class procedure TControllerCidadao.PatchPontuacao(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOCidadao.Create;
  FColuna := 'pontos';
  inherited;
end;

end.
