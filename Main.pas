unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    LangFRA: TRichEdit;
    Language: TRadioGroup;
    Memo1: TMemo;
    LangENG: TRichEdit;
    PythonPath: TEdit;
    PythonLabel: TLabel;
    Python: TSpeedButton;
    SplitsTreeLabel: TLabel;
    SplitsTreePath: TEdit;
    SplitsTree: TSpeedButton;
    RadioGroup1: TRadioGroup;
    PythonOpen: TOpenDialog;
    SplitsTreeOpen: TOpenDialog;
    Text: TRichEdit;
    OpenText: TBitBtn;
    TextLabel: TLabel;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    Command: TMemo;
    ColorChoice: TRadioGroup;
    LengthChoice: TRadioGroup;
    StoplistChoice: TComboBox;
    OpenStoplist: TSpeedButton;
    Stoplist: TEdit;
    StoplistLabel: TLabel;
    StoplistOpen: TOpenDialog;
    Lang: TRichEdit;
    Modified: TLabel;
    ComputeTreecloud: TBitBtn;
    Label1: TLabel;
    Whitespace: TLabel;
    Parameters: TRichEdit;
    load: TLabel;
    NbwordsLabel: TLabel;
    Nbwords: TEdit;
    Minnblabel: TLabel;
    Minnb: TEdit;
    SlidingWindow: TGroupBox;
    WidthLabel: TLabel;
    width: TEdit;
    StepLabel: TLabel;
    Step: TEdit;
    SepLabel: TLabel;
    SepChar: TEdit;
    TargetWord: TEdit;
    WordList: TRichEdit;
    TexteWordList: TLabel;
    Modified2: TLabel;
    OpenWordList: TBitBtn;
    ColorList: TRichEdit;
    Modified3: TLabel;
    TexteColorList: TLabel;
    OpenColors: TBitBtn;
    OpenWordListDialog: TOpenDialog;
    OpenColorListDialog: TOpenDialog;
    SizeList: TRichEdit;
    TexteSizeList: TLabel;
    OpenSizes: TBitBtn;
    Modified4: TLabel;
    OpenSizeListDialog: TOpenDialog;
    function GetTempDirectory: String;
    function crush(memo1: TMemo):string;
    procedure LoadLanguage(TheLanguage: TRichEdit;Sender: TObject);
    procedure PythonClick(Sender: TObject);
    procedure SplitsTreeClick(Sender: TObject);
    procedure LanguageClick(Sender: TObject);
    procedure OpenTextClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StoplistChange(Sender: TObject);
    procedure OpenStoplistClick(Sender: TObject);
    procedure TextChange(Sender: TObject);
    procedure ComputeTreecloudClick(Sender: TObject);
    procedure LengthChoiceClick(Sender: TObject);
    procedure ColorChoiceClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SplitsTreePathChange(Sender: TObject);
    procedure PythonPathChange(Sender: TObject);
    procedure StoplistChoiceChange(Sender: TObject);
    procedure NbwordsChange(Sender: TObject);
    procedure MinnbChange(Sender: TObject);
    procedure widthChange(Sender: TObject);
    procedure StepChange(Sender: TObject);
    procedure SepCharChange(Sender: TObject);
    procedure TargetWordChange(Sender: TObject);
    procedure WordListChange(Sender: TObject);
    procedure ColorListChange(Sender: TObject);
    procedure SizeListChange(Sender: TObject);
    procedure OpenWordListClick(Sender: TObject);
    procedure OpenSizesClick(Sender: TObject);
    procedure OpenColorsClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.crush(memo1: TMemo):string;
var i:integer;
begin
   result:='';
   for i:=0 to memo1.Lines.Count-1 do
   begin
      result:=result+memo1.lines[i];
   end;

end;


procedure TForm1.LoadLanguage(TheLanguage: TRichEdit; Sender: TObject);
begin
   Lang.lines:=TheLanguage.Lines;
   Memo1.lines.clear;
   Memo1.lines[0]:=lang.Lines[0];
   TextLabel.caption:=lang.lines[1];
   OpenText.caption:=lang.lines[2];
   RadioGroup1.Caption:=lang.lines[3];
   SlidingWindow.caption:=lang.lines[4];
   WidthLabel.caption:=lang.lines[5];
   StepLabel.caption:=lang.lines[6];
   ColorChoice.Caption:=lang.lines[7];
   LengthChoice.Caption:=lang.lines[8];
   LengthChoice.items[0]:=lang.lines[9];
   LengthChoice.items[1]:=lang.lines[10];
   PythonLabel.caption:=lang.lines[11];
   SplitsTreeLabel.caption:=lang.lines[12];
   Whitespace.caption:=lang.lines[13];
   StoplistLabel.caption:=lang.lines[14];
   StoplistChoice.items[0]:=lang.lines[15];
   StoplistChoice.itemindex:=1;
   StoplistChoice.itemindex:=0;
   ComputeTreecloud.caption:=lang.lines[16];
   NbwordsLabel.caption:=lang.lines[17];
   Minnblabel.Caption:=lang.lines[18];
   SepLabel.caption:=lang.lines[20];
   ColorChoice.Items[5]:=lang.lines[21];
   TargetWord.text:=lang.lines[22];
   TexteWordList.Caption:=lang.lines[23];
   OpenWordList.Caption:=lang.lines[24];
   TexteSizeList.Caption:=lang.lines[25];
   OpenSizes.Caption:=lang.lines[26];
   TexteColorList.Caption:=lang.lines[27];
   OpenColors.Caption:=lang.lines[28];
   Label1.Caption:=lang.lines[29];   
   Timer1Timer(Sender)
end;

//http://www.cryer.co.uk/brian/delphi/howto_get_temp.htm
function TForm1.GetTempDirectory: String;
var
  tempFolder: array[0..MAX_PATH] of Char;
begin
  GetTempPath(MAX_PATH, @tempFolder);
  result := StrPas(tempFolder);
end;


procedure TForm1.PythonClick(Sender: TObject);
begin
If PythonOpen.execute then
   PythonPath.Text:=PythonOpen.FileName;
Timer1Timer(Sender)
end;


procedure TForm1.SplitsTreeClick(Sender: TObject);
begin
If SplitsTreeOpen.execute then
   SplitsTreePath.Text:=SplitsTreeOpen.FileName;
Timer1Timer(Sender)
end;

procedure TForm1.LanguageClick(Sender: TObject);
begin
if Language.itemindex=0 then
begin
   LoadLanguage(LangFRA,Sender);
end;

if Language.itemindex=1 then
begin
   LoadLanguage(LangENG,Sender);
end;

Timer1Timer(Sender)
end;

procedure TForm1.OpenTextClick(Sender: TObject);
begin
if opendialog1.Execute then
begin
   text.Lines.loadfromfile(opendialog1.filename);
   Modified.caption:='false'
end;
Timer1Timer(Sender)
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var thestoplist,theedgelength,thecommandline,thewords,colorname:string;
begin
command.lines.clear;
thestoplist:='';
if fileexists(PythonPath.text) then
     pythonpath.color:=clwhite
else
     pythonpath.color:=clred;
if fileexists(SplitsTreePath.text) then
begin
{
     if pos(' ',splitstreepath.text)>0 then
     begin
           splitstreepath.color:=clred;
           Whitespace.Font.color:=clred;
     end
     else
     begin}
           splitstreepath.color:=clwhite;
           Whitespace.Font.color:=clblack;
{     end;}
end
else
begin
     SplitsTreePath.color:=clred;
     Whitespace.Font.color:=clblack;
end;

if (splitstreepath.color=clred) or (pythonpath.color=clred) then
     ComputeTreecloud.Enabled:=false
else
     ComputeTreecloud.enabled:=true;

If fileexists(stoplist.Text) then
     thestoplist:=' stoplist='+stoplist.Text;
if LengthChoice.ItemIndex=0 then
     theedgelength:='1'
else
     theedgelength:='0';
if minnb.Text='' then
     thewords:=' nbwords='+nbwords.Text
else
     thewords:=' minnb='+minnb.text;
if SepChar.text='' then
     thewords:=thewords+' window='+width.Text+' step='+step.Text
else
     thewords:=thewords+' sepchar='+sepchar.Text;
if OpenWordListDialog.FileName<>'' then
     thewords:=thewords+' words="'+OpenWordListDialog.FileName+'"';
if OpenSizeListDialog.FileName<>'' then
     thewords:=thewords+' customsize="'+OpenSizeListDialog.FileName+'"';
if OpenColorListDialog.FileName<>'' then
     thewords:=thewords+' customcolor="'+OpenColorListDialog.FileName+'"';
if colorchoice.ItemIndex=5 then
     colorname:='word'+TargetWord.Text
else
     colorname:=ColorChoice.Items[colorchoice.ItemIndex];

command.lines.add('"'+PythonPath.text+'" '+extractfilepath(application.ExeName)+'Treecloud.py'
              +thestoplist
              +' splitstreepath="'+SplitsTreePath.Text
              +'" unit='+theedgelength
              +thewords
              +' distance='+RadioGroup1.items[RadioGroup1.itemindex]
              +' color='+colorname
              +' "'+opendialog1.FileName+'"');


if load.caption='false' then
begin
parameters.lines.clear;
parameters.Lines.Add(PythonPath.Text);
parameters.Lines.Add(SplitsTreePath.Text);
parameters.Lines.Add(Stoplist.Text);
parameters.Lines.Add(inttostr(StoplistChoice.itemindex));
parameters.Lines.Add(inttostr(Language.itemindex));
parameters.Lines.Add(inttostr(RadioGroup1.itemindex));
parameters.Lines.Add(inttostr(ColorChoice.itemindex));
parameters.Lines.Add(inttostr(LengthChoice.itemindex));
parameters.Lines.Add(width.text);
parameters.Lines.Add(step.text);
parameters.Lines.Add(nbwords.text);
parameters.Lines.Add(minnb.text);
parameters.Lines.Add(SepChar.Text);
try
parameters.lines.savetofile(extractfilepath(application.exename)+'Treecloud.ini');
except
end;
end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
OpenWordListDialog.filename:='';
OpenSizeListDialog.filename:='';
OpenColorListDialog.filename:='';
load.caption:='true';
Form1.LanguageClick(Sender);
try
parameters.lines.loadfromfile(extractfilepath(application.exename)+'Treecloud.ini');
PythonPath.Text:=parameters.Lines[0];
SplitsTreePath.Text:=parameters.Lines[1];
Stoplist.Text:=parameters.Lines[2];
StoplistChoice.itemindex:=strtoint(parameters.Lines[3]);
Language.itemindex:=strtoint(parameters.Lines[4]);
RadioGroup1.itemindex:=strtoint(parameters.Lines[5]);
ColorChoice.itemindex:=strtoint(parameters.Lines[6]);
LengthChoice.itemindex:=strtoint(parameters.Lines[7]);
width.Text:=parameters.Lines[8];
step.Text:=parameters.Lines[9];
nbwords.Text:=parameters.Lines[10];
minnb.Text:=parameters.Lines[11];
SepChar.Text:=parameters.Lines[12];
except
end;
load.caption:='false';
Timer1Timer(Sender);
end;

procedure TForm1.StoplistChange(Sender: TObject);
begin
If fileexists(stoplist.Text) then
    stoplist.Font.color:=clblack
else
    stoplist.font.color:=clred;
Timer1Timer(Sender)
end;

procedure TForm1.OpenStoplistClick(Sender: TObject);
begin
If stoplistOpen.Execute then
begin
   if fileexists(stoplistOpen.FileName) then
        Stoplist.text:=stoplistOpen.FileName
   else
        showmessage(stoplistopen.filename+': file not found.')
end;
Timer1Timer(Sender)
end;

procedure TForm1.TextChange(Sender: TObject);
begin
   if modified.caption='false' then
       modified.caption:='true'
   else
       opendialog1.filename:='';
Timer1Timer(Sender);
end;

procedure TForm1.ComputeTreecloudClick(Sender: TObject);
begin
if opendialog1.FileName='' then
begin
   opendialog1.FileName:=GetTempDirectory+'TreecloudText.txt' ;
   text.Lines.savetofile(opendialog1.FileName);
end;

if OpenWordListDialog.FileName='' then
begin
   if wordlist.Lines.count>1 then
   begin
   OpenWordListDialog.FileName:=GetTempDirectory+'TreecloudText.Wordlist.txt' ;
   wordlist.Lines.savetofile(OpenWordListDialog.FileName);
   end
end;

if OpenColorListDialog.FileName='' then
begin
   if colorlist.Lines.count>1 then
   begin
   OpenColorListDialog.FileName:=GetTempDirectory+'TreecloudText.Colorlist.txt' ;
   colorlist.Lines.savetofile(OpenColorListDialog.FileName);
   end;
end;

if OpenSizeListDialog.FileName='' then
begin
   if sizelist.Lines.count>1 then
   begin
   OpenSizeListDialog.FileName:=GetTempDirectory+'TreecloudText.Sizelist.txt' ;
   sizelist.Lines.savetofile(OpenSizeListDialog.FileName);
   end;
end;

Timer1Timer(Sender);
command.lines.savetofile(extractfilepath(application.exename)+'TreecloudCommand.bat');
winexec(PChar(extractfilepath(application.exename)+'TreecloudCommand.bat'),0);
end;

procedure TForm1.LengthChoiceClick(Sender: TObject);
begin
Timer1Timer(Sender)
end;

procedure TForm1.ColorChoiceClick(Sender: TObject);
begin
Timer1Timer(Sender)
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
Timer1Timer(Sender)
end;

procedure TForm1.SplitsTreePathChange(Sender: TObject);
begin
Timer1Timer(Sender)
end;

procedure TForm1.PythonPathChange(Sender: TObject);
begin
Timer1Timer(Sender)
end;

procedure TForm1.StoplistChoiceChange(Sender: TObject);
begin
if StoplistChoice.itemindex=0 then
    OpenStoplistClick(Sender)
else
begin
   if StoplistChoice.itemindex=1 then
       Stoplist.Text:=ExtractFilePath(application.ExeName)+'StoplistGerman.txt';
   if StoplistChoice.itemindex=2 then
       Stoplist.Text:=ExtractFilePath(application.ExeName)+'StoplistEnglish.txt';
   if StoplistChoice.itemindex=3 then
       Stoplist.Text:=ExtractFilePath(application.ExeName)+'StoplistFrench.txt';
   if fileexists(Stoplist.Text) then
       Stoplist.Font.color:=clblack
   else
   begin
       Stoplist.font.color:=clred;
       showmessage(Stoplist.Text+': file not found.');
   end;
   Timer1Timer(Sender)
end;
end;

procedure TForm1.NbwordsChange(Sender: TObject);
begin
if Nbwords.text<>'' then
minnb.text:='';
Timer1Timer(Sender)
end;

procedure TForm1.MinnbChange(Sender: TObject);
begin
if minnb.text<>'' then
Nbwords.text:='';
Timer1Timer(Sender)
end;

procedure TForm1.widthChange(Sender: TObject);
begin
Timer1Timer(Sender);
If length(width.Text)>0 then
begin
   sepchar.Text:='';
   if length(step.Text)=0 then
       step.Text:='1';
end;
end;

procedure TForm1.StepChange(Sender: TObject);
begin
Timer1Timer(Sender) ;
If length(step.Text)>0 then
begin
   sepchar.Text:='';
   if length(width.Text)=0 then
       width.Text:='20';
end;
end;

procedure TForm1.SepCharChange(Sender: TObject);
begin
Timer1Timer(Sender) ;
sepchar.text:=lowercase(sepchar.text);
If length(sepchar.Text)>0 then
begin
   width.Text:='';
   step.Text:='';
end;
end;

procedure TForm1.TargetWordChange(Sender: TObject);
begin
Colorchoice.ItemIndex:=5;
Timer1Timer(Sender) ;
end;

procedure TForm1.WordListChange(Sender: TObject);
begin
   if modified2.caption='false' then
       modified2.caption:='true'
   else
       openwordlistdialog.filename:='';
Timer1Timer(Sender);
end;

procedure TForm1.ColorListChange(Sender: TObject);
begin
   if modified3.caption='false' then
       modified3.caption:='true'
   else
       opencolorlistdialog.filename:='';
Timer1Timer(Sender);
end;

procedure TForm1.SizeListChange(Sender: TObject);
begin
   if modified4.caption='false' then
       modified4.caption:='true'
   else
       opensizelistdialog.filename:='';
Timer1Timer(Sender);
end;

procedure TForm1.OpenWordListClick(Sender: TObject);
begin
if OpenWordListDialog.Execute then
begin
   WordList.Lines.loadfromfile(OpenWordListDialog.filename);
   Modified2.caption:='false'
end;
Timer1Timer(Sender)
end;

procedure TForm1.OpenSizesClick(Sender: TObject);
begin
if OpenSizeListDialog.Execute then
begin
   SizeList.Lines.loadfromfile(OpenSizeListDialog.filename);
   Modified4.caption:='false'
end;
Timer1Timer(Sender)
end;

procedure TForm1.OpenColorsClick(Sender: TObject);
begin
if OpenColorListDialog.Execute then
begin
   ColorList.Lines.loadfromfile(OpenColorListDialog.filename);
   Modified3.caption:='false'
end;
Timer1Timer(Sender)
end;

end.
