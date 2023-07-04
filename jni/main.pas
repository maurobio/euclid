{hint: Pascal files location: ...\AppEuclid\jni }
unit main;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, Spinner, comboedittext,
  linearlayout;

type

  { TMainModule }

  TMainModule = class(jForm)
    B1Edit: jEditText;
    bEdit: jEditText;
    CalcBtn: jButton;
    AboutBtn: jButton;
    D1Edit: jEditText;
    dEdit: jEditText;
    hEdit: jEditText;
    lEdit: jEditText;
    LinearLayout1: jLinearLayout;
    LinearLayout2: jLinearLayout;
    rEdit: jEditText;
    ImageView: jImageView;
    ImageList: jImageList;
    ShapesSpin: jSpinner;
    ShapeLabel: jTextView;
    B1Label: jTextView;
    bLabel: jTextView;
    D1Label: jTextView;
    dLabel: jTextView;
    hLabel: jTextView;
    lLabel: jTextView;
    rLabel: jTextView;
    AreaLabel: jTextView;
    AreaValueLabel: jTextView;
    Separator5: jTextView;
    Separator4: jTextView;
    Separator2: jTextView;
    Separator1: jTextView;
	ScrollView1:jScrollView;
    procedure AboutBtnClick(Sender: TObject);
    procedure CalcBtnClick(Sender: TObject);
    procedure ShapesSpinItemSelected(Sender: TObject; itemCaption: string;
      ItemIndex: integer);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  MainModule: TMainModule;

implementation

{$R *.lfm}

uses Math;

{ TMainModule }

procedure TMainModule.ShapesSpinItemSelected(Sender: TObject;
  itemCaption: string; ItemIndex: integer);
begin
  B1Edit.Text := IntToStr(0);
  bEdit.Text := IntToStr(0);
  D1Edit.Text := IntToStr(0);
  dEdit.Text := IntToStr(0);
  hEdit.Text := IntToStr(0);
  lEdit.Text := IntToStr(0);
  rEdit.Text := IntToStr(0);
  AreaValueLabel.Text := FloatToStrF(0.0, ffFixed, 7, 5);
  ImageView.ImageIndex := ItemIndex;
  case ItemIndex of
    0: { circle }
    begin
      B1Edit.Editable := False;
      bEdit.Editable := False;
      D1Edit.Editable := False;
      dEdit.Editable := False;
      hEdit.Editable := False;
      lEdit.Editable := False;
      rEdit.Editable := True;
      rEdit.SetFocus;
    end;
    1: { lozenge }
    begin
      B1Edit.Editable := False;
      bEdit.Editable := False;
      D1Edit.Editable := True;
      dEdit.Editable := True;
      hEdit.Editable := False;
      lEdit.Editable := False;
      rEdit.Editable := False;
    end;
    2: { parallelogram }
    begin
      B1Edit.Editable := False;
      bEdit.Editable := True;
      D1Edit.Editable := False;
      dEdit.Editable := False;
      hEdit.Editable := True;
      lEdit.Editable := False;
      rEdit.Editable := False;
      bEdit.SetFocus;
    end;
    3: { rectangle }
    begin
      B1Edit.Editable := False;
      bEdit.Editable := True;
      D1Edit.Editable := False;
      dEdit.Editable := False;
      hEdit.Editable := True;
      lEdit.Editable := False;
      rEdit.Editable := False;
      bEdit.SetFocus;
    end;
    4: { square }
    begin
      B1Edit.Editable := False;
      bEdit.Editable := False;
      D1Edit.Editable := False;
      dEdit.Editable := False;
      hEdit.Editable := False;
      lEdit.Editable := True;
      rEdit.Editable := False;
      lEdit.SetFocus;
    end;
    5: { trapeze }
    begin
      B1Edit.Editable := True;
      bEdit.Editable := True;
      D1Edit.Editable := False;
      dEdit.Editable := False;
      hEdit.Editable := True;
      lEdit.Editable := False;
      rEdit.Editable := False;
      B1Edit.SetFocus;
    end;
    6: { triangle }
    begin
      B1Edit.Editable := False;
      bEdit.Editable := True;
      D1Edit.Editable := False;
      dEdit.Editable := False;
      hEdit.Editable := True;
      lEdit.Editable := False;
      rEdit.Editable := False;
      bEdit.SetFocus;
    end;
  end;
end;

procedure TMainModule.CalcBtnClick(Sender: TObject);
var
  A, B1, b, D1, d, h, l, r: float;
begin
  DecimalSeparator := '.';
  A := 0.0;
  case ShapesSpin.SelectedIndex of
    0: { circle }
    begin
      if TryStrToFloat(rEdit.Text, r) then
        A := Pi * Sqr(r)
      else
        A := 0.0;
    end;
    1: { lozenge }
    begin
      if (TryStrToFloat(D1Edit.Text, D1)) and (TryStrToFloat(dEdit.Text, d)) then
        A := D1 * d / 2
      else
        A := 0.0;
    end;
    2: { parallelogram }
      if (TryStrToFloat(bEdit.Text, b)) and (TryStrToFloat(hEdit.Text, h)) then
        A := b * h
      else
        A := 0.0;
    3: { rectangle }
      if (TryStrToFloat(bEdit.Text, b)) and (TryStrToFloat(hEdit.Text, h)) then
        A := b * h
      else
        A := 0.0;
    4: { square }
      if TryStrToFloat(lEdit.Text, l) then
        A := Sqr(l)
      else
        A := 0.0;
    5: { trapeze }
      if (TryStrToFloat(B1Edit.Text, B1)) and (TryStrToFloat(bEdit.Text, b)) and
        (TryStrToFloat(hEdit.Text, h)) then
        A := (B1 + b) * h / 2
      else
        A := 0.0;
    6: { triangle }
      if (TryStrToFloat(bEdit.Text, b)) and (TryStrToFloat(hEdit.Text, h)) then
        A := b * h / 2
      else
        A := 0.0;
  end;
  AreaValueLabel.Text := FloatToStrF(A, ffFixed, 7, 5);
end;

procedure TMainModule.AboutBtnClick(Sender: TObject);
begin
  ShowMessage('Euclid' + sLineBreak + 'A simple app for calculating' +
    sLineBreak + 'the area of geometric shapes.' + sLineBreak +
    sLineBreak + 'This app does not belongs to anyone. Property is theft. Help yourself.',
    gvCenter, slLong);
end;

end.
