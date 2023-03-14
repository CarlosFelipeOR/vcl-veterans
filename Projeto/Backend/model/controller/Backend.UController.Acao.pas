unit Backend.UController.Acao;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  Backend.UController.Base,
  Backend.UEntity.Acao;

type
  [SwagPath('acao', 'A��o')]
  TControlleAcao = class(TControllerBase)
    private
    public
      [SwagGET('Listar A��o', True)]
      [SwagResponse(200, TAcao, 'Informa��es da A��o', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGET('{id}', 'Procurar uma A��o')]
      [SwagParamPath('id', 'id da A��o')]
      [SwagResponse(200, TAcao, 'Informa��es da A��o')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPOST('Cadastrar Nova A��o')]
      [SwagParamBody('Informa��es da A��o', TAcao)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Excluir o Registro de uma A��o')]
      [SwagParamPath('id', 'Id da A��o')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      //PESQUISAR IMPLEMENTA��O
      [SwagGET('{id}', 'Alterar o Registro de uma A��o')]
      [SwagParamPath('id', 'id da A��o')]
      [SwagParamPath('coluna', 'Coluna da tabela A��o')]
      [SwagParamPath('valor', 'Novo Valor da colunda da tabela A��o')]
      [SwagResponse(200, TAcao, 'Informa��es da A��o')]
      [SwagResponse(404)]
      class procedure Patch(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGET('{id}', 'Alterar n�mero de Apoios de uma A��o')]
      [SwagParamPath('id', 'id da A��o')]
      [SwagParamPath('coluna', 'Coluna da tabela A��o')]
      [SwagParamPath('valor', 'Novo Valor da colunda da tabela A��o')]
      [SwagResponse(200, TAcao, 'Informa��es da A��o')]
      [SwagResponse(404)]

      class procedure PatchPontuacao(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;
  end;

implementation

uses
  Backend.UDAO.Intf,
  Backend.UDAO.Acao,
  System.JSON,
  System.SysUtils;
{ TControllerContribuicao }

class procedure TControlleAcao.Delete(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOAcao.Create;
  inherited;

end;

class procedure TControlleAcao.Get(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOAcao.Create;
  inherited;

end;

class procedure TControlleAcao.Gets(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOAcao.Create;
  inherited;

end;

class procedure TControlleAcao.Post(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOAcao.Create;
  inherited;

end;

class procedure TControlleAcao.Patch(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOAcao.Create;
  inherited;

end;

class procedure TControlleAcao.PatchPontuacao(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOAcao.Create;
  FColuna := 'Apoio';
  inherited;

end;

end.
