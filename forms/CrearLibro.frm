VERSION 5.00
Begin VB.Form CrearLibro 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   7710
   ClientLeft      =   3420
   ClientTop       =   2100
   ClientWidth     =   14010
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7710
   ScaleWidth      =   14010
   Begin VB.TextBox Text6 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   2640
      TabIndex        =   20
      Text            =   "Enlace"
      Top             =   6000
      Width           =   11055
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   2640
      TabIndex        =   19
      Text            =   "Imagen"
      Top             =   5280
      Width           =   11055
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   2640
      TabIndex        =   18
      Text            =   "Descripcion"
      Top             =   4440
      Width           =   11055
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   2640
      TabIndex        =   17
      Text            =   "Editorial"
      Top             =   3720
      Width           =   11055
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   2640
      TabIndex        =   16
      Text            =   "Autor"
      Top             =   2400
      Width           =   11055
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   2640
      TabIndex        =   15
      Text            =   "Titulo"
      Top             =   1680
      Width           =   11055
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2640
      TabIndex        =   14
      Text            =   "Genero"
      Top             =   3120
      Width           =   11055
   End
   Begin VB.CommandButton crear 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Crear Libro"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   1
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   6840
      Width           =   13455
   End
   Begin VB.CommandButton CerrarSesion 
      Caption         =   "Cerrar Sesion"
      Height          =   255
      Left            =   10560
      TabIndex        =   2
      Top             =   210
      Width           =   1335
   End
   Begin VB.CommandButton TerminarPrograma 
      Caption         =   "Terminar Programa"
      Height          =   255
      Left            =   12120
      TabIndex        =   1
      Top             =   210
      Width           =   1695
   End
   Begin VB.CommandButton Atras 
      Caption         =   "<-- Atrás"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   210
      Width           =   800
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "Enlace"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   13
      Top             =   6000
      Width           =   2055
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "Imagen"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   12
      Top             =   5280
      Width           =   2055
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "Descripción"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   10
      Top             =   4440
      Width           =   2055
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "Editorial"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   9
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "Género"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   8
      Top             =   3120
      Width           =   2055
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "Autor"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   2400
      Width           =   2055
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "Titulo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label Titulo 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Crear libro"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   240
      TabIndex        =   5
      Top             =   840
      Width           =   13545
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000016&
      BackStyle       =   0  'Transparent
      Caption         =   "Librería MEGA+"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   330
      Left            =   1200
      TabIndex        =   4
      Top             =   150
      Width           =   2535
   End
   Begin VB.Label Presentacion 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Bienvenido"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   630
      Left            =   4515
      TabIndex        =   3
      Top             =   195
      Width           =   5775
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H8000000D&
      FillColor       =   &H00800000&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   0
      Top             =   0
      Width           =   14055
   End
End
Attribute VB_Name = "CrearLibro"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public identificador As String
Public idRecibido As String
Public nombre As String
Public enlace As String
Public id As String
Public id_genero As String

'Dim Con As ADODB.Connection
'Dim Rec As ADODB.Recordset

Private Sub Atras_Click()
    Dim frm As New Configuracion
    Unload Me
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    frm.Show
End Sub

Private Sub Ca_Change()

End Sub

Private Sub CerrarSesion_Click()
    Dim frm As New Login
    Unload Me
    frm.Show
End Sub

Private Sub crear_Click(Index As Integer)

    Dim Titulo As String
    Dim autor As String
    Dim Genero As String
    Dim editorial As String
    Dim descripcion As String
    Dim imagen As String
    Dim enlace As String
    
    Titulo = Text1.Text
    autor = Text2.Text
    Genero = Combo1.Text
    editorial = Text3.Text
    descripcion = Text4.Text
    imagen = Text5.Text
    enlace = Text6.Text
    
    AbrirConexion
    
    Set Rec = New ADODB.Recordset
    Dim sqlQuery As String
    
    sqlQuery = "SELECT count(*) as total FROM catalogo WHERE titulo = '" & Titulo & "';"
    Rec.Open sqlQuery, Con, adOpenStatic, adLockReadOnly
    
    cantidadTitulo = Rec.Fields("total").Value
    
    If cantidadTitulo = 0 Then
        
        Dim imgPath As String
        imgPath = App.Path & "\imagen\" & imagen

        If Dir(imgPath) <> "" Then
            'MsgBox "La imagen existe"
            
            Set Rec = New ADODB.Recordset
            Dim sqlGenero As String
            Dim identificacion_genero As String
            
            sqlGenero = "SELECT id FROM genero WHERE nombre = '" & Genero & "';"
            Rec.Open sqlGenero, Con, adOpenStatic, adLockReadOnly
            
            identificacion_genero = Rec.Fields("id").Value
            
            ' MsgBox identificacion_genero
            
            Set Rec = New ADODB.Recordset
            Dim insertLibro As String
            insertLibro = "INSERT INTO catalogo (id_genero, titulo, imagen, descripcion, autor, editorial, enlace) " & _
                          "VALUES ('" & identificacion_genero & "', '" & Titulo & "', '" & imagen & "', '" & descripcion & "', '" & autor & "', '" & editorial & "', '" & enlace & "')"
            
            Con.Execute insertLibro
            
            MsgBox "Libro creado exitosamente"
            
            Dim frm As New Configuracion
            Unload Me
            frm.idRecibido = idRecibido
            frm.nombre = nombre
            frm.Show
            
            
        Else
            MsgBox "La imagen no se encuentra en la ruta especificada.", vbExclamation
        End If
        
    Else
        MsgBox "Este título ya está ocupado, ingrese un título nuevo."
    End If
    
    CerrarConexion

End Sub



Private Sub TerminarPrograma_Click()
    End
End Sub

Private Sub Form_Load()

    Presentacion.Caption = "Bienvenido " + nombre

    Combo1.AddItem "Ficción"
    Combo1.AddItem "Historia"
    Combo1.AddItem "Ciencia Ficción"
    Combo1.AddItem "Fantasía"
    Combo1.AddItem "Misterio"

    Combo1.ListIndex = 0
    
End Sub
