object Form1: TForm1
  Left = 252
  Top = 154
  Width = 863
  Height = 579
  Caption = 'Treecloud'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PythonLabel: TLabel
    Left = 120
    Top = 48
    Width = 121
    Height = 13
    Caption = 'Emplacement de Python :'
  end
  object Python: TSpeedButton
    Left = 824
    Top = 64
    Width = 25
    Height = 23
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
      B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
      B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
      0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
      55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
      55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
      55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
      5555575FFF755555555557000075555555555577775555555555}
    NumGlyphs = 2
    OnClick = PythonClick
  end
  object SplitsTreeLabel: TLabel
    Left = 120
    Top = 88
    Width = 135
    Height = 13
    Caption = 'Emplacement de SplitsTree :'
  end
  object SplitsTree: TSpeedButton
    Left = 824
    Top = 104
    Width = 25
    Height = 23
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
      B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
      B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
      0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
      55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
      55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
      55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
      5555575FFF755555555557000075555555555577775555555555}
    NumGlyphs = 2
    OnClick = SplitsTreeClick
  end
  object TextLabel: TLabel
    Left = 120
    Top = 136
    Width = 88
    Height = 13
    Caption = 'Texte '#224' visualiser :'
  end
  object OpenStoplist: TSpeedButton
    Left = 696
    Top = 360
    Width = 25
    Height = 21
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
      B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
      B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
      0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
      55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
      55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
      55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
      5555575FFF755555555557000075555555555577775555555555}
    NumGlyphs = 2
    OnClick = OpenStoplistClick
  end
  object StoplistLabel: TLabel
    Left = 120
    Top = 344
    Width = 44
    Height = 13
    Caption = 'Antidico :'
  end
  object Modified: TLabel
    Left = 224
    Top = 144
    Width = 22
    Height = 13
    Caption = 'false'
    Visible = False
  end
  object Label1: TLabel
    Left = 120
    Top = 424
    Width = 102
    Height = 13
    Caption = 'Ligne de commande :'
  end
  object Whitespace: TLabel
    Left = 136
    Top = 120
    Width = 695
    Height = 14
    Caption = 
      'Le chemin de fichier ne doit pas contenir d'#39'espace. Sinon, cr'#233'ez' +
      ' un raccourci vers SplitsTree dont le nom de fichier ne contient' +
      ' pas d'#39'espace.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentFont = False
    Visible = False
  end
  object load: TLabel
    Left = 688
    Top = 48
    Width = 22
    Height = 13
    Caption = 'false'
    Visible = False
  end
  object NbwordsLabel: TLabel
    Left = 120
    Top = 384
    Width = 164
    Height = 13
    Caption = 'Nombre de mots du nuage arbor'#233' :'
  end
  object Minnblabel: TLabel
    Left = 488
    Top = 384
    Width = 342
    Height = 13
    Caption = 
      'ou nombre minimal d'#39'occurrences pour appara'#238'tre dans le nuage ar' +
      'bor'#233' :'
  end
  object TexteWordList: TLabel
    Left = 120
    Top = 264
    Width = 110
    Height = 13
    Caption = 'Mots du nuage arbor'#233' :'
  end
  object Modified2: TLabel
    Left = 232
    Top = 256
    Width = 22
    Height = 13
    Caption = 'false'
    Visible = False
  end
  object Modified3: TLabel
    Left = 640
    Top = 256
    Width = 22
    Height = 13
    Caption = 'false'
    Visible = False
  end
  object TexteColorList: TLabel
    Left = 608
    Top = 264
    Width = 92
    Height = 13
    Caption = 'Couleurs des mots :'
  end
  object TexteSizeList: TLabel
    Left = 368
    Top = 264
    Width = 81
    Height = 13
    Caption = 'Tailles des mots :'
  end
  object Modified4: TLabel
    Left = 480
    Top = 256
    Width = 22
    Height = 13
    Caption = 'false'
    Visible = False
  end
  object Lang: TRichEdit
    Left = 112
    Top = 40
    Width = 9
    Height = 353
    PlainText = True
    TabOrder = 14
    Visible = False
    WordWrap = False
  end
  object LangFRA: TRichEdit
    Left = 280
    Top = 48
    Width = 233
    Height = 113
    Lines.Strings = (
      
        'Ce programme est une interface graphique pour Treecloud, et perm' +
        'et de construire le nuage arbor'#233' d'#39'un texte. T'#233'l'#233'chargez Treeclo' +
        'ud, ainsi que son code source Python, sur http://www.treecloud.o' +
        'rg.'
      'Texte '#224' visualiser :'
      'Ouvrir un fichier texte'
      'Distance'
      'Fen'#234'tre glissante'
      'Taille:'
      'D'#233'placement:'
      'Couleurs'
      'Longueurs d'#39'ar'#234'tes'
      'unitaires'
      'r'#233'elles'
      
        'Emplacement de Python (t'#233'l'#233'charger version 2.X sur www.python.or' +
        'g)'
      
        'Emplacement de SplitsTree (t'#233'l'#233'charger version 4.X sur www.split' +
        'stree.org)'
      
        'Le chemin de fichier ne doit pas contenir d'#39'espace. Sinon, cr'#233'ez' +
        ' un raccourci vers SplitsTree dont le nom de fichier ne contient' +
        ' pas d'#39'espace.'
      'Antidictionnaire :'
      'Perso'
      'Calcule le nuage arbor'#233' avec TreeCloud !'
      'Nombre de mots du nuage arbor'#233' :'
      
        'ou nombre minimal d'#39'occurrences pour appara'#238'tre dans le nuage ar' +
        'bor'#233' :'
      'Fichier non trouv'#233' : '
      'S'#233'parateur :'
      'mot :'
      'cible'
      'Mots du nuage arbor'#233' :'
      'Ouvrir liste de mots'
      'Tailles des mots :'
      'Liste de tailles'
      'Couleurs des mots :'
      'Liste de couleurs'
      'Ligne de commande :')
    PlainText = True
    TabOrder = 0
    Visible = False
    WordWrap = False
  end
  object Language: TRadioGroup
    Left = 728
    Top = 0
    Width = 121
    Height = 49
    Caption = ' Treecloud '
    ItemIndex = 0
    Items.Strings = (
      'Fran'#231'ais'
      'English')
    TabOrder = 1
    OnClick = LanguageClick
  end
  object Memo1: TMemo
    Left = 120
    Top = 8
    Width = 601
    Height = 33
    BorderStyle = bsNone
    Color = clBtnFace
    Lines.Strings = (
      
        'Ce programme est une interface graphique pour Treecloud, et perm' +
        'et de construire le nuage arbor'#233' d'#39'un texte. T'#233'l'#233'chargez '
      'Treecloud, ainsi que son code '
      'source Python, sur http://www.treecloud.org.')
    ReadOnly = True
    TabOrder = 2
  end
  object LangENG: TRichEdit
    Left = 368
    Top = 48
    Width = 233
    Height = 113
    Lines.Strings = (
      
        'This program is a graphical user interface for Treecloud, it bui' +
        'lds the tree cloud of a text. Download Treecloud, as well as its' +
        ' Python source code and user manual, at http://www.treecloud.org' +
        '.'
      'Text to visualize:'
      'Open a text file'
      'Distance'
      'Sliding window'
      'Width:'
      'Sliding step:'
      'Colors'
      'Edge length'
      'unitary'
      'real'
      'Python path (download version 2.X on www.python.org)'
      'SplitsTree path (download version 4.X on www.splitstree.org)'
      
        'The file path should not contain any white space. Otherwise, ple' +
        'ase created a short cut to SplitsTree with a filename with no wh' +
        'ite space.'
      'Stoplist:'
      'Custom'
      'Compute the tree cloud with TreeCloud!'
      'Number of words in the tree cloud:'
      
        'or minimal number or occurrences to be present in the tree cloud' +
        ':'
      'File not found:'
      'Separator:'
      'word:'
      'target'
      'Words in the tree cloud:'
      'Open a word list'
      'Colors of words in the tree cloud:'
      'Open a color list')
    PlainText = True
    TabOrder = 3
    Visible = False
    WordWrap = False
  end
  object PythonPath: TEdit
    Left = 120
    Top = 64
    Width = 705
    Height = 21
    TabOrder = 4
    OnChange = PythonPathChange
  end
  object SplitsTreePath: TEdit
    Left = 120
    Top = 104
    Width = 705
    Height = 21
    TabOrder = 5
    OnChange = SplitsTreePathChange
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 105
    Height = 201
    Caption = ' Distance '
    ItemIndex = 0
    Items.Strings = (
      'liddell'
      'gmean'
      'jaccard'
      'dice'
      'ms'
      'zscore'
      'hyperlex'
      'chisquared'
      'poissonstirling'
      'loglikelihood'
      'oddsratio'
      'ngd'
      'mi')
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
  object Text: TRichEdit
    Left = 120
    Top = 152
    Width = 729
    Height = 97
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PlainText = True
    TabOrder = 7
    WordWrap = False
    OnChange = TextChange
  end
  object OpenText: TBitBtn
    Left = 648
    Top = 128
    Width = 201
    Height = 25
    Caption = 'Ouvrir un fichier texte'
    TabOrder = 8
    OnClick = OpenTextClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object Command: TMemo
    Left = 120
    Top = 440
    Width = 729
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object ColorChoice: TRadioGroup
    Left = 8
    Top = 368
    Width = 105
    Height = 113
    Caption = 'Couleurs'
    ItemIndex = 2
    Items.Strings = (
      'yahoo'
      'berry'
      'chronology'
      'dispersion'
      'chronodisp'
      'mot :')
    TabOrder = 10
    OnClick = ColorChoiceClick
  end
  object LengthChoice: TRadioGroup
    Left = 8
    Top = 488
    Width = 105
    Height = 49
    Caption = 'Longueurs d'#39'ar'#234'tes'
    ItemIndex = 0
    Items.Strings = (
      'unitaires'
      'r'#233'elles')
    TabOrder = 11
    OnClick = LengthChoiceClick
  end
  object StoplistChoice: TComboBox
    Left = 720
    Top = 360
    Width = 129
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 12
    Text = 'Perso'
    OnChange = StoplistChoiceChange
    Items.Strings = (
      'Perso'
      'Deutsch'
      'English'
      'Fran'#231'ais')
  end
  object Stoplist: TEdit
    Left = 120
    Top = 360
    Width = 577
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnChange = StoplistChange
  end
  object ComputeTreecloud: TBitBtn
    Left = 315
    Top = 496
    Width = 321
    Height = 46
    Caption = 'Calcule le nuage arbor'#233' avec TreeCloud !'
    Enabled = False
    TabOrder = 15
    OnClick = ComputeTreecloudClick
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000130B0000130B00000000000000000000DCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCA0CC
      FF807AFF4758FF1E2AFF3E4AFF353DFFAACAFF746AFF3F4DFF4258FF5D7DFFD9
      C8FFDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC98B7
      DD423DC6585BE04A54CB494ABC3D4AF2656DFF393DFF5354FF2839FF2E38FFE7
      DCFFDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCECE5
      DDE6DDD2E7E3DBDCD5C88C8EDDDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCFFC1B5FFE5E1DCDCDCFFE1DAFFCFC4DCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCFFD3C8FFA493DCDCDCFFAB99FFCDC2DCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCFF8B78FFD5CCFF8B75DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCFFBAAAFF9F8AFFA28FDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCF3EBDE
      E7E3DBEAE1D6EAE1D6E6DBD0DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCFFD5CCFF7F6AFFD3CADCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCE6DDCC
      E0D7CCDED3C6E2D5C0DBC9B9DCDCDCFBD7C4FFDDD4DCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCFF8B75DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFFE3DFFF9A86FFBAACDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCFF8B75DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC787DFFD2CEFF
      9DA5FF9B98FF8191FF6464FFDCDCDCDCDCDCDCDCDCFFB2A3FF9F8AFFD5CCDCDC
      DCDCDCDCDCDCDCDCDCDCFF8B75DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDAE9FE99A2F2DCDCDCDCDCDC3034FFA9A2FF
      5861FF524EFF1F2BFF3E48FFE494A6FF917CFF917CFF917CFF826CFF8972FFAF
      9EFFDBD2DCDCDCDCDCDCFF8B75DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC3251E782A0F7556AEA6670FF4348FF
      4343FF5C5AFF606EFF4B52FFFFD5CCDCDCDCDCDCDCDCDCDCDCDCDCFFD5CCFFCB
      C0FFA08EFF8C77FFAF9DFF8571DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCFFBDB1BCADC04663EA2C47E41225D9DCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCFFD5CCFFCBC0FF8E78FFD5CCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCFFD5CCFF9681FFA491DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCFFD5CCFF9D89FFD9D0DCDCDCDCDCDCDCDCDCDCDCDCFF
      D5CCFFC7BAFF846FFFBBAFDCDCDCDCDCDCF1E7E5E6DDD2EFE3D6DCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCFFD5CCFF9683FFE5DEDCDCDCFFD3C8FFA796FF
      8B75FF9884FF9B87FF9B87FF9B87DCDCDCE9AD9FDCD3C0DBC9B1DCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFFD5CCFF8871FF8874FFA794FFD3C8DC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFFD5CCFF8B78DCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFFE1DAFF9F8ADCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFFC9BEFFB4A5DCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFFB4A2FFC9BEDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFF9F8AFFDDD6DCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCFFE1DAFF826CFFC3B7DCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCFFD5CCFF917BFFD3C8FF9683DCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCFFA491FFCFC4DCDCDCFF9580FFE7E3DCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCFFBAACFFAD9BDCDCDCDCDCDCFFC5B9FFB4A2DCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCFFAB99FF8874DCDCDCDCDCDCDCDCDCFFD5CCFF9681DCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCFFDD
      D4FF917CFF9D89FFAF9E6271FF4850FFE5DCFFDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC484AF95440
      D74545F05346EC5A55F75869FF3243FF5459FFA59EFF596AFF4754FF4F52FF67
      7DFF4D58FF525EFF7774FFDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCA1B9F89AB1F87E94F08B9DF395B1F6111FFF5755
      FF1C26FF2B28F44348FF484EFF84A0FF4852FF877BFF4052FF1D29FF2B32FF38
      49FFDCDCDC3F49FF5A58FFDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDC6C8CF16086F1486DEC4B63E88294F00D27F4A09B
      FF8E9DFF8A82FF7A80FFAAB8FF6469FFA5ABFF6468FFA7A2FF93A2FF8382FFA1
      AEFFDCDCDC9DA5FF6066FFEEE6FFDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDEE7FEE6EBFED6DCFAD8DCFADCDCDCDAE5FCE6E9
      FCDCDCDCDCDCDCE4E4FFDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC
      DCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDC}
  end
  object Parameters: TRichEdit
    Left = 112
    Top = 48
    Width = 9
    Height = 353
    PlainText = True
    TabOrder = 16
    Visible = False
    WordWrap = False
  end
  object Nbwords: TEdit
    Left = 120
    Top = 400
    Width = 361
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    Text = '50'
    OnChange = NbwordsChange
  end
  object Minnb: TEdit
    Left = 488
    Top = 400
    Width = 361
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnChange = MinnbChange
  end
  object SlidingWindow: TGroupBox
    Left = 8
    Top = 216
    Width = 105
    Height = 145
    Caption = 'Fen'#234'tre glissante'
    TabOrder = 19
    object WidthLabel: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Taille :'
    end
    object StepLabel: TLabel
      Left = 8
      Top = 56
      Width = 69
      Height = 13
      Caption = 'D'#233'placement :'
    end
    object SepLabel: TLabel
      Left = 8
      Top = 96
      Width = 58
      Height = 13
      Caption = 'S'#233'parateur :'
    end
    object width: TEdit
      Left = 8
      Top = 32
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '30'
      OnChange = widthChange
    end
    object Step: TEdit
      Left = 8
      Top = 72
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '1'
      OnChange = StepChange
    end
    object SepChar: TEdit
      Left = 8
      Top = 112
      Width = 89
      Height = 21
      TabOrder = 2
      OnChange = SepCharChange
    end
  end
  object TargetWord: TEdit
    Left = 60
    Top = 457
    Width = 48
    Height = 21
    TabOrder = 20
    Text = 'cible'
    OnChange = TargetWordChange
  end
  object WordList: TRichEdit
    Left = 120
    Top = 280
    Width = 241
    Height = 57
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PlainText = True
    TabOrder = 21
    WordWrap = False
    OnChange = WordListChange
  end
  object OpenWordList: TBitBtn
    Left = 240
    Top = 256
    Width = 121
    Height = 25
    Caption = 'Ouvrir liste de mots'
    TabOrder = 22
    OnClick = OpenWordListClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object ColorList: TRichEdit
    Left = 608
    Top = 280
    Width = 241
    Height = 57
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PlainText = True
    TabOrder = 23
    WordWrap = False
    OnChange = ColorListChange
  end
  object OpenColors: TBitBtn
    Left = 736
    Top = 256
    Width = 113
    Height = 25
    Caption = 'Liste de couleurs'
    TabOrder = 24
    OnClick = OpenColorsClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object SizeList: TRichEdit
    Left = 368
    Top = 280
    Width = 233
    Height = 57
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PlainText = True
    TabOrder = 25
    WordWrap = False
    OnChange = SizeListChange
  end
  object OpenSizes: TBitBtn
    Left = 496
    Top = 256
    Width = 103
    Height = 25
    Caption = 'Liste de tailles'
    TabOrder = 26
    OnClick = OpenSizesClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
      0555555555777777755555555555555555555555555555555555}
    NumGlyphs = 2
  end
  object PythonOpen: TOpenDialog
    FileName = 'python.exe'
    Filter = 'Programme Python|Python.exe|Programme Python dos|Python.bat'
    Left = 792
    Top = 56
  end
  object SplitsTreeOpen: TOpenDialog
    FileName = 'splitstree.exe'
    Left = 792
    Top = 96
  end
  object OpenDialog1: TOpenDialog
    Left = 640
    Top = 120
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 760
    Top = 400
  end
  object StoplistOpen: TOpenDialog
    Left = 664
    Top = 376
  end
  object OpenWordListDialog: TOpenDialog
    Left = 216
    Top = 248
  end
  object OpenColorListDialog: TOpenDialog
    Left = 680
    Top = 240
  end
  object OpenSizeListDialog: TOpenDialog
    Left = 456
    Top = 256
  end
end
