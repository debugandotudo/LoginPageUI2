program LoginPage2;

uses
  System.StartUpCopy,
  FMX.Forms,
  unitSignUp in 'unitSignUp.pas' {frmSignUp},
  unitSignIn in 'unitSignIn.pas' {frmSignIn};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSignIn, frmSignIn);
  Application.Run;
end.
