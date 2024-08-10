VERSION 5.00
Begin VB.Form MenuPrincipal 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   7860
   ClientLeft      =   3540
   ClientTop       =   2085
   ClientWidth     =   14055
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7860
   ScaleWidth      =   14055
   Begin VB.CommandButton CerrarSesion 
      Caption         =   "Cerrar Sesion"
      Height          =   255
      Left            =   10560
      TabIndex        =   13
      Top             =   210
      Width           =   1335
   End
   Begin VB.CommandButton Configuracion 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Configuracion"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   11520
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   4800
      Width           =   2175
   End
   Begin VB.CommandButton Librosnogusto 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Libros que no me gustaron"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   11520
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   1920
      Width           =   2175
   End
   Begin VB.CommandButton Leermastarde 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Leer mas tarde"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   1920
      Width           =   2175
   End
   Begin VB.CommandButton GeneroFavorito 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Generos favoritos"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   4800
      Width           =   2175
   End
   Begin VB.CommandButton Genero 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Generos"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   1920
      Width           =   2175
   End
   Begin VB.CommandButton Recomendados 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Recomendados"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   9120
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   4800
      Width           =   2175
   End
   Begin VB.CommandButton LibroFavorito 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Libros favoritos"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   4800
      Width           =   2175
   End
   Begin VB.CommandButton Leidos 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Libros leidos"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1920
      Width           =   2175
   End
   Begin VB.CommandButton TerminarPrograma 
      Caption         =   "Terminar Programa"
      Height          =   255
      Left            =   12120
      TabIndex        =   0
      Top             =   210
      Width           =   1695
   End
   Begin VB.CommandButton Catalogo 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Catalogo de libros"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5535
      Left            =   5280
      MaskColor       =   &H000000FF&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1920
      UseMaskColor    =   -1  'True
      Width           =   3495
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Bienvenido a la Librería MEGA+"
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
      Left            =   195
      TabIndex        =   3
      Top             =   840
      Width           =   13665
   End
   Begin VB.Label Label2 
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
      Left            =   300
      TabIndex        =   2
      Top             =   150
      Width           =   2535
   End
   Begin VB.Label Label1 
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
      Left            =   4520
      TabIndex        =   1
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
Attribute VB_Name = "MenuPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public idRecibido As String
Public nombre As String

Private Sub Configuracion_Click()
    Dim frm As New Configuracion
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub

Private Sub Genero_Click()
    Dim frm As New Genero
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub

Private Sub GeneroFavorito_Click()
    Dim frm As New GeneroFavorito
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub


Private Sub LeerMasTarde_Click()
    Dim frm As New Leermastarde
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub

Private Sub Leidos_Click()
    Dim frm As New Leidos
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show

End Sub

Private Sub LibroFavorito_Click()
    Dim frm As New LibroFavorito
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub

Private Sub Librosnogusto_Click()
    Dim frm As New NoDeseado
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub

Private Sub Recomendados_Click()
    Dim frm As New Recomendado
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub

Private Sub TerminarPrograma_Click()
 End
End Sub

Private Sub CerrarSesion_Click()
    Dim frm As New Login
    ' Asignar un valor a una propiedad del formulario si es necesario
    ' frm.datoRecibido = Rec.Fields("id").Value
    
    ' Cerrar el formulario actual
    Unload Me
    
    ' Mostrar el nuevo formulario
    frm.Show
End Sub

Private Sub Catalogo_Click()
    
    Dim frm As New BuscadorPrincipal
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    Unload Me
    frm.Show
    
End Sub


Private Sub Form_Load()
    Label1.Caption = "Bienvenido " + nombre
End Sub

