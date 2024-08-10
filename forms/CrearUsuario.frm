VERSION 5.00
Begin VB.Form CrearUsuario 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   8805
   ClientLeft      =   5955
   ClientTop       =   1665
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
   ScaleHeight     =   8805
   ScaleWidth      =   8490
   Begin VB.TextBox Text3 
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
      TabIndex        =   9
      Top             =   4920
      Width           =   5415
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00000000&
      Caption         =   "Regresar"
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
      Top             =   7440
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
      Top             =   6000
      Width           =   5415
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Crear Cuenta"
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
      Top             =   6720
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
   Begin VB.Label Label5 
      BackColor       =   &H80000014&
      Caption         =   "Contraseña"
      Height          =   255
      Left            =   1560
      TabIndex        =   8
      Top             =   5640
      Width           =   5415
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H80000014&
      Caption         =   "Ingresa tus datos para crear una cuenta"
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
      Caption         =   "Registro para ingresar al sistema"
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
      Picture         =   "CrearUsuario.frx":0000
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   4980
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000014&
      Caption         =   "Usuario"
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   4560
      Width           =   5415
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000014&
      Caption         =   "Correo"
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
      Height          =   7695
      Left            =   1200
      Top             =   600
      Width           =   6135
   End
End
Attribute VB_Name = "CrearUsuario"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    On Error GoTo ErrorHandler

    Dim sqlQuery As String

    ' Abre la conexión a la base de datos
    AbrirConexion
    Set Rec = New ADODB.Recordset

    sqlQuery = "SELECT * FROM usuario"

    ' Ejecuta la consulta y abre el recordset
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    Dim coincide As Integer
    coincide = 0
    
    If Not Rec.EOF Then
        Rec.MoveFirst

        ' Recorre los registros
        Do Until Rec.EOF
            
            If Text3.Text = Rec.Fields("username").Value Or Text1.Text = Rec.Fields("correo").Value Then
                coincide = 1
            End If
            
            Rec.MoveNext
        Loop
    End If
    
    If coincide = 0 Then
        MsgBox "Este es un usuario nuevo"
        Dim insertUsuario As String
        Dim username As String
        Dim correo As String
        Dim password As String
        
        username = Text3.Text
        correo = Text1.Text
        password = Text2.Text
        
        insertUsuario = "INSERT INTO usuario (username, correo, password) VALUES ('" & username & "', '" & correo & "', '" & password & "')"
        Con.Execute insertUsuario
        
        MsgBox "Uusario insertado correctamente"
        
        Dim frm As New Login
        Unload Me
        frm.Show
        
    Else
        MsgBox "Ya existe este usuario"
    End If
    
    

    ' Cierra el recordset y la conexión
    Rec.Close
    CerrarConexion
    Exit Sub

ErrorHandler:
    MsgBox "Error: " & Err.Description, vbCritical
    ' Asegúrate de que el recordset y la conexión se cierren en caso de error
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
    End If
    If Not Con Is Nothing Then
        If Con.State = adStateOpen Then CerrarConexion
    End If
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
    Dim frm As New Login
    frm.Show
End Sub

Private Sub Form_Load()
    Me.BackColor = vbBlack
End Sub

