unit unitSignUp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TfrmSignUp = class(TForm)
    img_background: TImage;
    lay_imputs: TLayout;
    lay_edts: TLayout;
    lay_edt_email: TLayout;
    edt_email: TEdit;
    img_email: TImage;
    lay_edt_password: TLayout;
    edt_password: TEdit;
    img_lock: TImage;
    rect_btn_signup: TRectangle;
    Label4: TLabel;
    Line1: TLine;
    Line2: TLine;
    lay_tabs: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    img_logo: TImage;
    lay_midias: TLayout;
    Label3: TLabel;
    StyleBook1: TStyleBook;
    lay_edt_name: TLayout;
    edt_name: TEdit;
    img_user: TImage;
    Line3: TLine;
    rect_email: TRectangle;
    Rectangle1: TRectangle;
    Rectangle4: TRectangle;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    Image1: TImage;
    Rectangle3: TRectangle;
    Image2: TImage;
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSignUp: TfrmSignUp;

implementation

{$R *.fmx}

uses unitSignIn;

procedure TfrmSignUp.Label2Click(Sender: TObject);
begin
 if  not Assigned(frmSignIn) then Application.CreateForm(TfrmSignIn,frmSignIn);
  Application.MainForm := frmSignIn;
  frmSignIn.Show;
  frmSignUp.Close;

end;

end.
