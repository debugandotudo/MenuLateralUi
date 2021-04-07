unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox, FMX.Ani;

type
  TfrmPrincipal = class(TForm)
    rect_tb: TRectangle;
    img_menu: TImage;
    Label1: TLabel;
    lay_menu: TLayout;
    rect_icons: TRectangle;
    lay_user: TLayout;
    rect_white: TRectangle;
    rect_btn_less: TRectangle;
    cir_img_user: TCircle;
    Img_less: TImage;
    Lay_name_img_usu: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    Line1: TLine;
    lay_home: TLayout;
    Circle1: TCircle;
    Image1: TImage;
    Label4: TLabel;
    lay_setting: TLayout;
    Circle2: TCircle;
    Image2: TImage;
    Label5: TLabel;
    lay_notification: TLayout;
    Circle3: TCircle;
    Image3: TImage;
    Label6: TLabel;
    lay_sub: TLayout;
    Circle4: TCircle;
    Image4: TImage;
    Label7: TLabel;
    lay_message: TLayout;
    Circle5: TCircle;
    Image5: TImage;
    Label8: TLabel;
    lay_vacancy: TLayout;
    Circle6: TCircle;
    Image6: TImage;
    Label9: TLabel;
    lay_profile: TLayout;
    Circle7: TCircle;
    Image7: TImage;
    Label10: TLabel;
    lay_logout: TLayout;
    Line2: TLine;
    lay_btn_logout: TLayout;
    Circle8: TCircle;
    Image8: TImage;
    Label11: TLabel;
    FloatAnimation1: TFloatAnimation;
    cir_img_menu: TCircle;
    procedure cir_img_menuClick(Sender: TObject);
    procedure rect_btn_lessClick(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
  private
    procedure EfeitoClick(obj: TObject);
    procedure AbreMenu;
    procedure FecheMenu;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.cir_img_menuClick(Sender: TObject);
begin
  EfeitoClick(Sender);
  AbreMenu;

end;
procedure TfrmPrincipal.rect_btn_lessClick(Sender: TObject);
begin
  EfeitoClick(Sender);
  FecheMenu;
end;


procedure TfrmPrincipal.AbreMenu;
begin
  lay_menu.Align := TAlignLayout.None;
  lay_menu.Position.X := - frmPrincipal.Width;
  lay_menu.tag := 1;

  FloatAnimation1.StartValue := - frmPrincipal.Width;
  FloatAnimation1.StopValue  := 0;
  FloatAnimation1.Inverse := False;
  lay_menu.Visible := True;
  FloatAnimation1.Start;


end;

procedure TfrmPrincipal.FecheMenu;
begin
  lay_menu.Align := TAlignLayout.None;
  lay_menu.Position.X := 0;
  lay_menu.tag := 0;
  FloatAnimation1.StartValue := - frmPrincipal.Width;
  FloatAnimation1.StopValue  := 0;
  FloatAnimation1.Inverse := True;
  FloatAnimation1.Start;


end;



procedure TfrmPrincipal.FloatAnimation1Finish(Sender: TObject);
begin
  if lay_menu.tag = 0 then begin
    lay_menu.Visible := false;
  end;

  lay_menu.Align := TAlignLayout.Contents;
end;

procedure TfrmPrincipal.EfeitoClick(obj : TObject);
begin
  if obj.ClassName = TImage.ClassName then begin
    TImage(obj).Opacity := 0.7;
    TImage(obj).AnimateFloat('Opacity',1,0.4,TAnimationType.InOut,TInterpolationType.Circular);
  end;
  if obj.ClassName = TRectangle.ClassName then begin
    TRectangle(obj).Opacity := 0.7;
    TRectangle(obj).AnimateFloat('Opacity',1,0.4,TAnimationType.InOut,TInterpolationType.Circular);

  end;
end;



end.
