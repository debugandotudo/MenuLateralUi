unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    rect_tb: TRectangle;
    img_menu: TImage;
    cir_img_menu: TCircle;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
