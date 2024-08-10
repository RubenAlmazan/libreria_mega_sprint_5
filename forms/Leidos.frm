VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Leidos 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   7860
   ClientLeft      =   3540
   ClientTop       =   2085
   ClientWidth     =   14010
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7860
   ScaleWidth      =   14010
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
      TabIndex        =   8
      Top             =   2160
      Width           =   3855
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
      TabIndex        =   7
      Top             =   2160
      Width           =   9255
   End
   Begin VB.CommandButton Atras 
      Caption         =   "<-- Atrás"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   200
      Width           =   800
   End
   Begin VB.CommandButton TerminarPrograma 
      Caption         =   "Terminar Programa"
      Height          =   255
      Left            =   12120
      TabIndex        =   1
      Top             =   200
      Width           =   1695
   End
   Begin VB.CommandButton CerrarSesion 
      Caption         =   "Cerrar Sesion"
      Height          =   255
      Left            =   10680
      TabIndex        =   0
      Top             =   200
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   4770
      Left            =   240
      TabIndex        =   6
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
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   $"Leidos.frx":0000
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
      Caption         =   "Libros leidos"
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
      Left            =   4605
      TabIndex        =   4
      Top             =   200
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
      TabIndex        =   3
      Top             =   140
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
Attribute VB_Name = "Leidos"
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

Private Sub Command2_Click()
    If Text3.Text = "" Then
        MsgBox "Ingrese un titulo valido", vbInformation
    Else
        Me.Hide
        Dim frm As New DetalleLeido
        frm.identificador = Text3.Text
        frm.idRecibido = idRecibido
        frm.nombre = nombre
        
        frm.Show
    End If
End Sub

Private Sub Form_Load()
    Presentacion.Caption = "Bienvenido " + nombre
    
    AbrirConexion
    Set Rec = New ADODB.Recordset
    
    Dim sqlQuery As String
    sqlQuery = "SELECT * FROM Catalogo " & _
                "WHERE id IN ( " & _
                "    SELECT id_libro " & _
                "    FROM contenido_leido " & _
                "    WHERE id_usuario = " & idRecibido & _
                ");"

    ' Ejecuta la consulta
    Rec.Open sqlQuery, Con, adOpenStatic, adLockReadOnly

    ' Consulta para contar el número de registros
    Dim countRec As ADODB.Recordset
    Set countRec = New ADODB.Recordset
    Dim countQuery As String
    countQuery = "SELECT COUNT(*) as total FROM Catalogo " & _
                "WHERE id IN ( " & _
                "    SELECT id_libro " & _
                "    FROM contenido_leido " & _
                "    WHERE id_usuario = " & idRecibido & _
                ");"
    ' Ejecuta la consulta de conteo
    countRec.Open countQuery, Con, adOpenStatic, adLockReadOnly

    ' Obtiene el número de registros
    Dim registros As Integer
    registros = countRec.Fields("Total").Value

    ' Configura el MSFlexGrid
    MSFlexGrid1.Cols = 5  ' Número de columnas
    MSFlexGrid1.Rows = registros + 1
    MSFlexGrid1.TextMatrix(0, 0) = "ID"
    MSFlexGrid1.TextMatrix(0, 1) = "Titulo"
    MSFlexGrid1.TextMatrix(0, 2) = "Descripcion"
    MSFlexGrid1.TextMatrix(0, 3) = "Autor"
    MSFlexGrid1.TextMatrix(0, 4) = "Editorial"

    MSFlexGrid1.ColWidth(0) = 500 ' Ancho para "ID"
    MSFlexGrid1.ColWidth(1) = 3000 ' Ancho para "Titulo"
    MSFlexGrid1.ColWidth(2) = 5500 ' Ancho para "Descripcion"
    MSFlexGrid1.ColWidth(3) = 2100 ' Ancho para "Autor"
    MSFlexGrid1.ColWidth(4) = 2300 ' Ancho para "Editorial"

    ' Verifica si el Recordset se ha llenado
    If Not Rec.EOF Then
        Rec.MoveFirst ' Asegúrate de comenzar desde el primer registro
        Dim contador As Integer
        contador = 1

        ' Recorre los registros y añádelos al MSFlexGrid1
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
        MsgBox "No tienes libros en tu lista de leidos"
        Text3.Text = "No se encontraron registros"
        Command2.Enabled = False
    End If

    ' Cierra el recordset y la conexión
    Rec.Close
    countRec.Close
    CerrarConexion

    ' Libera los objetos
    Set Rec = Nothing
    Set countRec = Nothing
    
    Exit Sub

ErrorHandler:
    MsgBox "Error: " & Err.Description
    If Not Rec Is Nothing Then If Rec.State = adStateOpen Then Rec.Close
    If Not countRec Is Nothing Then If countRec.State = adStateOpen Then countRec.Close
    Set Rec = Nothing
    Set countRec = Nothing
    CerrarConexion
    
End Sub

Private Sub MSFlexGrid1_Click()
    Dim selectedRow As Integer
    Dim selectedCol As Integer
    selectedRow = MSFlexGrid1.Row
    selectedCol = MSFlexGrid1.Col

    ' Asegúrate de que la selección está dentro del rango
    If selectedRow >= 1 And selectedCol >= 0 And selectedRow < MSFlexGrid1.Rows And selectedCol < MSFlexGrid1.Cols Then
        ' Obtiene el ID de la fila seleccionada
        Dim rowID As String
        rowID = MSFlexGrid1.TextMatrix(selectedRow, 1) ' Asumiendo que la columna 0 tiene los IDs
           
        Text3.Text = rowID
    End If
End Sub

Private Sub TerminarPrograma_Click()
    End
End Sub

