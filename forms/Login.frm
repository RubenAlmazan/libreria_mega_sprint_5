VERSION 5.00
Begin VB.Form Login 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   8070
   ClientLeft      =   6045
   ClientTop       =   2130
   ClientWidth     =   8490
   FillColor       =   &H00FFFFFF&
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8070
   ScaleWidth      =   8490
   Begin VB.CommandButton Command3 
      BackColor       =   &H00000000&
      Caption         =   "Crear nuevo usuario"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   7
      Top             =   6600
      Width           =   5415
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   1560
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   4920
      Width           =   5415
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Iniciar Sesion"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   5880
      UseMaskColor    =   -1  'True
      Width           =   5415
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   1560
      TabIndex        =   0
      Top             =   3840
      Width           =   5415
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H80000014&
      Caption         =   "Inicie sesion para acceder"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   6
      Top             =   2880
      Width           =   5655
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Bienvenido a la Librería"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   5
      Top             =   840
      Width           =   5655
   End
   Begin VB.Image Image1 
      Height          =   1275
      Left            =   1800
      Picture         =   "Login.frx":0000
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   4980
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000014&
      Caption         =   "Contraseña"
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   4560
      Width           =   5415
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000014&
      Caption         =   "Usuario"
      Height          =   255
      Left            =   1560
      TabIndex        =   3
      Top             =   3480
      Width           =   5415
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   6855
      Left            =   1200
      Top             =   600
      Width           =   6135
   End
End
Attribute VB_Name = "Login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

    Dim sqlQuery As String

    AbrirConexion
    Set Rec = New ADODB.Recordset

    sqlQuery = "SELECT * FROM usuario"

    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    If Not Rec.EOF Then
        Rec.MoveFirst

        ' Recorre los registros
        Do Until Rec.EOF
        
            ' Verifica si los campos de texto coinciden
            If Text1.Text = Rec.Fields("username").Value And Text2.Text = Rec.Fields("password").Value Then
                
                Me.Hide
                Dim frm As New MenuPrincipal
                frm.idRecibido = Rec.Fields("id").Value
                frm.nombre = Rec.Fields("username").Value
                
                frm.Show
                
                Rec.Close
                CerrarConexion
                
                Exit Sub
            End If
            
            Rec.MoveNext
       Loop

        MsgBox "Ingrese un usuario y/o contraseña válidos"
    End If

    Rec.Close
    CerrarConexion
    Exit Sub

ErrorHandler:
    MsgBox "Error: " & Err.Description, vbCritical
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
    End If
    CerrarConexion
End Sub

Private Sub Command2_Click()
    
    Me.Hide
    Dim frm As New MenuPrincipal
    frm.idRecibido = 1
    frm.nombre = "ruben"
    frm.Show
    
End Sub

Private Sub Command3_Click()
    Me.Hide
    Dim frm As New CrearUsuario
    frm.Show
End Sub

Private Sub Form_Load()
    Me.BackColor = vbBlack
End Sub

