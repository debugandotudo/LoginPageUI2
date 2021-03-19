unit unitSignIn;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.Ani;

type
  TfrmSignIn = class(TForm)
    img_logo: TImage;
    img_background: TImage;
    lay_imputs: TLayout;
    lay_edt_password: TLayout;
    edt_password: TEdit;
    img_lock: TImage;
    lay_edt_email: TLayout;
    edt_email: TEdit;
    img_email: TImage;
    Line1: TLine;
    Line2: TLine;
    rect_btn_signin: TRectangle;
    Label4: TLabel;
    lay_midias: TLayout;
    Label3: TLabel;
    lay_tabs: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    StyleBook1: TStyleBook;
    lay_edts: TLayout;
    rect_email: TRectangle;
    rect_password: TRectangle;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    Image1: TImage;
    Rectangle3: TRectangle;
    Image2: TImage;
    procedure Label1Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmSignIn: TfrmSignIn;

implementation

{$R *.fmx}

uses unitSignUp;

procedure EfeitoClick(rect : TRectangle);
begin
  rect.Opacity := 0.8;
  rect.AnimateFloat('Opacity',1,0.3, TAnimationType.InOut,TInterpolationType.Circular);
end;



procedure TfrmSignIn.Label1Click(Sender: TObject);
begin
 if  not Assigned(frmSignUp) then Application.CreateForm(TfrmSignUp,frmSignUp);

  Application.MainForm := frmSignUp;
  frmSignUp.Show;
  frmSignIn.Close;

end;

procedure TfrmSignIn.Rectangle3Click(Sender: TObject);
begin
  EfeitoClick(TRectangle(Sender));
end;

end.
