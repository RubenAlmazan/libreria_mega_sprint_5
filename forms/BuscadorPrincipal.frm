VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form BuscadorPrincipal 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form2"
   ClientHeight    =   7860
   ClientLeft      =   3540
   ClientTop       =   2085
   ClientWidth     =   14010
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7860
   ScaleWidth      =   14010
   Begin VB.CommandButton Atras 
      Caption         =   "<-- Atrás"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   210
      Width           =   800
   End
   Begin VB.CommandButton TerminarPrograma 
      Caption         =   "Terminar Programa"
      Height          =   255
      Left            =   12120
      TabIndex        =   4
      Top             =   210
      Width           =   1695
   End
   Begin VB.CommandButton CerrarSesion 
      Caption         =   "Cerrar Sesion"
      Height          =   255
      Left            =   10560
      TabIndex        =   3
      Top             =   210
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   4770
      Left            =   240
      TabIndex        =   2
      Top             =   2880
      Width           =   13455
      _ExtentX        =   23733
      _ExtentY        =   8414
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
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
      Height          =   495
      Left            =   240
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   2160
      Width           =   9255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Buscar"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   9840
      TabIndex        =   0
      Top             =   2160
      Width           =   3855
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   $"BuscadorPrincipal.frx":0000
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   9
      Top             =   1680
      Width           =   13335
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Catálogo de libros"
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
      TabIndex        =   7
      Top             =   840
      Width           =   13545
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
      TabIndex        =   6
      Top             =   195
      Width           =   5775
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
      Left            =   1200
      TabIndex        =   5
      Top             =   150
      Width           =   2535
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
Attribute VB_Name = "BuscadorPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public idRecibido As String
Public nombre As String

Private Sub Atras_Click()
    Dim frm As New MenuPrincipal
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    Unload Me
    frm.Show
End Sub

Private Sub CerrarSesion_Click()
    Dim frm As New Login
    Unload Me
    frm.Show
End Sub

Private Sub Form_Load()
    On Error GoTo ErrorHandler

    Presentacion.Caption = "Bienvenido " + nombre

    ' Inicializar la base de datos
    AbrirConexion
    Set Rec = New ADODB.Recordset
    
    ' Consulta para ver los registros del catalogo
    Dim sqlQuery As String
    sqlQuery = "SELECT * FROM catalogo " & _
               "WHERE id NOT IN (" & _
               "SELECT id_libro FROM contenido_eliminado WHERE id_usuario = " & idRecibido & ");"
    
    Rec.Open sqlQuery, Con, adOpenStatic, adLockReadOnly

    ' Consulta para contar el número de registros
    Dim countRec As ADODB.Recordset
    Set countRec = New ADODB.Recordset
    Dim countQuery As String
    countQuery = "SELECT COUNT(*) AS Total FROM catalogo " & _
                "WHERE id NOT IN (" & _
                "SELECT id_libro FROM contenido_eliminado WHERE id_usuario = " & idRecibido & ");"
    countRec.Open countQuery, Con, adOpenStatic, adLockReadOnly

    Dim registros As Integer
    registros = countRec.Fields("Total").Value

    ' Inicializar MSFlexGrid
    MSFlexGrid1.Cols = 5
    MSFlexGrid1.Rows = registros + 1
    MSFlexGrid1.TextMatrix(0, 0) = "ID"
    MSFlexGrid1.TextMatrix(0, 1) = "Titulo"
    MSFlexGrid1.TextMatrix(0, 2) = "Descripcion"
    MSFlexGrid1.TextMatrix(0, 3) = "Autor"
    MSFlexGrid1.TextMatrix(0, 4) = "Editorial"

    MSFlexGrid1.ColWidth(0) = 500
    MSFlexGrid1.ColWidth(1) = 3000
    MSFlexGrid1.ColWidth(2) = 5500
    MSFlexGrid1.ColWidth(3) = 2100
    MSFlexGrid1.ColWidth(4) = 2300

    ' Llenar la tabla con los registros
    If Not Rec.EOF Then
        Rec.MoveFirst
        Dim contador As Integer
        contador = 1
        Do Until Rec.EOF
            MSFlexGrid1.TextMatrix(contador, 0) = Rec.Fields("id").Value
            MSFlexGrid1.TextMatrix(contador, 1) = Rec.Fields("titulo").Value
            MSFlexGrid1.TextMatrix(contador, 2) = Rec.Fields("descripcion").Value
            MSFlexGrid1.TextMatrix(contador, 3) = Rec.Fields("autor").Value
            MSFlexGrid1.TextMatrix(contador, 4) = Rec.Fields("editorial").Value
            contador = contador + 1
            Rec.MoveNext
        Loop
    Else
        MsgBox "No tienes libros en tu lista de no deseados"
        Text3.Text = "No se encontraron registros"
        Command2.Enabled = False
    End If

    ' Cerrar la conexión a la base de datos
    Rec.Close
    countRec.Close
    CerrarConexion

    Set Rec = Nothing
    Set countRec = Nothing
    Set Con = Nothing

    Exit Sub

ErrorHandler:
    MsgBox "Error: " & Err.Description
    If Not Rec Is Nothing Then If Rec.State = adStateOpen Then Rec.Close
    If Not countRec Is Nothing Then If countRec.State = adStateOpen Then countRec.Close
    If Not Con Is Nothing Then If Con.State = adStateOpen Then Con.Close
    Set Rec = Nothing
    Set countRec = Nothing
    Set Con = Nothing
End Sub


Private Sub Command2_Click()
    ' Asegúrate de que la propiedad 'identificador' existe en el formulario Detalle
    If Text3.Text = "" Then
        MsgBox "Ingrese un titulo valido", vbInformation
    Else
        Me.Hide
        Dim frm As New Detalle
        frm.identificador = Text3.Text
        frm.idRecibido = idRecibido
        frm.nombre = nombre
        
        frm.Show
    End If
End Sub

Private Sub MSFlexGrid1_Click()
    ' Obtiene la fila y columna seleccionada
    Dim selectedRow As Integer
    Dim selectedCol As Integer
    selectedRow = MSFlexGrid1.Row
    selectedCol = MSFlexGrid1.Col

    If selectedRow >= 1 And selectedCol >= 0 And selectedRow < MSFlexGrid1.Rows And selectedCol < MSFlexGrid1.Cols Then
        ' Obtiene el ID de la fila seleccionada
        Dim rowID As String
        rowID = MSFlexGrid1.TextMatrix(selectedRow, 1)
           
        Text3.Text = rowID
    End If
End Sub

Private Sub TerminarPrograma_Click()
    End
End Sub
