unit UfrmMinhasAcoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.StdCtrls, FMX.ListView, FMX.Layouts, FMX.Controls.Presentation,
  FMX.Objects, Backend.UEntity.Acao, UServiceIntf, Backend.UEntity.Categoria,
  UServiceUsuario;

type
  TfrmMinhaAcoes = class(TForm)
    imgApoiarMelhorias: TImage;
    imgExemplo: TImage;
    recFundo: TRectangle;
    ToolBar1: TToolBar;
    recFundoBar: TRectangle;
    lytVoltar: TLayout;
    imgVoltar: TImage;
    lytApoirMelhoria: TLayout;
    lblMinhasAcoes: TLabel;
    lytPrincipal: TLayout;
    lstAcoesVoluntarias: TListView;
    lytMensagem: TLayout;
    imgPerfil: TImage;
    procedure FormCreate(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
  private
    procedure CarregarRegistros;
    procedure PrepararListView(aAcao: TAcao);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMinhaAcoes: TfrmMinhaAcoes;

implementation

{$R *.fmx}

uses StrUtils, UServiceAcao, UfrmAcaoVoluntaria, UUtils.Constants;

procedure TfrmMinhaAcoes.FormCreate(Sender: TObject);
begin
  Self.CarregarRegistros;
end;

procedure TfrmMinhaAcoes.imgVoltarClick(Sender: TObject);
begin
  if not Assigned(frmAcaoVoluntaria) then
    frmAcaoVoluntaria := TfrmAcaoVoluntaria.Create(Application);

  frmAcaoVoluntaria.Show;
  Application.MainForm := frmAcaoVoluntaria;
  Self.Close;
end;

procedure TfrmMinhaAcoes.CarregarRegistros;
var
  xServiceAcoes: IService;
  xAcao: TAcao;
begin
  lstAcoesVoluntarias.Items.Clear;

  xServiceAcoes := TServiceAcao.Create;
  xServiceAcoes.Listar;

  for xAcao in TServiceAcao(xServiceAcoes).Acoes do
  begin
    Self.PrepararListView(xAcao)
  end;

end;

procedure TfrmMinhaAcoes.PrepararListView(aAcao: TAcao);
var
  xItem: TListViewItem;
begin
  if aAcao.Criador.Nome = dm.xUsuarioLogado.Nome then
  begin
    xItem := lstAcoesVoluntarias.Items.Add;
    xItem.Tag := aAcao.Id;

    TListItemText(xItem.Objects.FindDrawable('txtRanking')).Text := '';
    TListItemImage(xItem.Objects.FindDrawable('imgMelhoria')).Bitmap := imgPerfil.Bitmap;
    TListItemText(xItem.Objects.FindDrawable('txtCategoria')).Text := aAcao.Categoria.Nome;
    TListItemImage(xItem.Objects.FindDrawable('imgApoiar')).Bitmap := imgApoiarMelhorias.Bitmap;
    TListItemText(xItem.Objects.FindDrawable('txtEndereco')).Text := aAcao.Endereco;
    TListItemText(xItem.Objects.FindDrawable('txtDescricao')).Text := aAcao.Descricao;
    TListItemText(xItem.Objects.FindDrawable('txtApoiadores')).Text := FloatToStr(aAcao.Apoio);
    TListItemText(xItem.Objects.FindDrawable('txtStatus')).Text := aAcao.Status;
    TListItemText(xItem.Objects.FindDrawable('txtNome')).Text := aAcao.Criador.Nome;
  end;
end;



end.
