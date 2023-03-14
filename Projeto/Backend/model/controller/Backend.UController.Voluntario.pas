unit Backend.UController.Voluntario;

interface

uses
  Horse,
  GBSwagger.Path.Attributes,
  Backend.UController.Base,
  Backend.UEntity.Voluntario;

type
  [SwagPath('voluntario', 'Volunt�rio')]
  TControllerVoluntario = class(TControllerBase)
    private
    public
      [SwagGET('Listar Volunt�rios', True)]
      [SwagResponse(200, TVoluntario, 'Informa��es da Solicita��o', True)]
      [SwagResponse(404)]
      class procedure Gets(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGET('{id}', 'Procurar um Volunt�rio')]
      [SwagParamPath('id', 'id do Volunt�rio')]
      [SwagResponse(200, TVoluntario, 'Informa��es do Volunt�rio')]
      [SwagResponse(404)]
      class procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagGET('{coluna}', 'Listar Cidad�os em ordem')]
      [SwagParamPath('coluna', 'Coluna em que se deseja aplicar a ordena��o')]
      [SwagParamPath('ordem', 'Determina se o retorno deve ser feito de modo crescente ou decrescente')]
      [SwagResponse(200, TVoluntario, 'Lista de Volunt�rios ordenada')]
      [SwagResponse(404)]
      class procedure GetOrder(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagPOST('Cadastrar Novo Volunt�rio')]
      [SwagParamBody('Informa��es do Volunt�rio', TVoluntario)]
      [SwagResponse(201)]
      [SwagResponse(400)]
      class procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      [SwagDELETE('{id}', 'Excluir o Registro de um Volunt�rio')]
      [SwagParamPath('id', 'Id do Volunt�rio')]
      [SwagResponse(204)]
      [SwagResponse(400)]
      [SwagResponse(404)]
      class procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;

      //PESQUISAR IMPLEMENTA��O
      [SwagPATCH('{id}', 'Alterar o Registro de um Volunt�rio')]
      [SwagParamPath('id', 'id da Melhoria')]
      [SwagParamPath('coluna', 'Coluna da tabela Volunt�rio')]
      [SwagParamPath('valor', 'Novo Valor da colunda da tabela Volunt�rio')]
      [SwagResponse(200, TVoluntario, 'Informa��es do Volunt�rio')]
      [SwagResponse(404)]
      class procedure Patch(Req: THorseRequest; Res: THorseResponse; Next: TProc); override;
  end;

implementation

 uses
  Backend.UDAO.Intf,
  Backend.UDAO.Voluntario,
  System.JSON,
  System.SysUtils;
{ TControllerContribuicao }

class procedure TControllerVoluntario.Delete(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOVoluntario.Create;
  inherited;

end;

class procedure TControllerVoluntario.Get(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOVoluntario.Create;
  inherited;

end;

class procedure TControllerVoluntario.GetOrder(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOVoluntario.Create;
  inherited;

end;

class procedure TControllerVoluntario.Gets(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOVoluntario.Create;
  inherited;

end;

class procedure TControllerVoluntario.Post(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOVoluntario.Create;
  inherited;

end;

class procedure TControllerVoluntario.Patch(Req: THorseRequest;
  Res: THorseResponse; Next: TProc);
begin
  FDAO := TDAOVoluntario.Create;
  inherited;

end;

end.
