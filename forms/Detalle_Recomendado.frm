VERSION 5.00
Begin VB.Form DetalleRecomendado 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form3"
   ClientHeight    =   7710
   ClientLeft      =   3420
   ClientTop       =   2100
   ClientWidth     =   14010
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7710
   ScaleWidth      =   14010
   Begin VB.CommandButton eliminar 
      BackColor       =   &H00C0C0FF&
      Caption         =   "No me gusto"
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
      Left            =   12120
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   6720
      Width           =   1575
   End
   Begin VB.CommandButton favgenero 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Agregar G�nero a Favorito"
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
      Index           =   0
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   6720
      Width           =   1695
   End
   Begin VB.CommandButton favorito 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Agregar a Favorito"
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
      Left            =   8280
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   6720
      Width           =   1695
   End
   Begin VB.CommandButton luego 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Leer luego"
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
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   6720
      Width           =   1575
   End
   Begin VB.CommandButton Leer 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Leer "
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
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   6720
      Width           =   1335
   End
   Begin VB.CommandButton CerrarSesion 
      Caption         =   "Cerrar Sesion"
      Height          =   255
      Left            =   10560
      TabIndex        =   5
      Top             =   210
      Width           =   1335
   End
   Begin VB.CommandButton TerminarPrograma 
      Caption         =   "Terminar Programa"
      Height          =   255
      Left            =   12120
      TabIndex        =   4
      Top             =   210
      Width           =   1695
   End
   Begin VB.CommandButton Atras 
      Caption         =   "<-- Atr�s"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   210
      Width           =   800
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      BackStyle       =   0  'Transparent
      Caption         =   "Descripci�n"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   4920
      TabIndex        =   16
      Top             =   5160
      Width           =   2055
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      BackStyle       =   0  'Transparent
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
      Left            =   4920
      TabIndex        =   15
      Top             =   4320
      Width           =   2055
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      BackStyle       =   0  'Transparent
      Caption         =   "G�nero"
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
      Left            =   4920
      TabIndex        =   14
      Top             =   3480
      Width           =   2055
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      BackStyle       =   0  'Transparent
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
      Left            =   4920
      TabIndex        =   13
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      BackStyle       =   0  'Transparent
      Caption         =   "ID"
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
      Left            =   4920
      TabIndex        =   12
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Image Image1 
      Height          =   5535
      Left            =   360
      Stretch         =   -1  'True
      Top             =   1800
      Width           =   4335
   End
   Begin VB.Label Label6 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "ID"
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
      Left            =   7200
      TabIndex        =   11
      Top             =   1800
      Width           =   6495
   End
   Begin VB.Label Label5 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Editorial"
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
      Left            =   7200
      TabIndex        =   10
      Top             =   4320
      Width           =   6495
   End
   Begin VB.Label Titulo 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mi libro"
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
      TabIndex        =   8
      Top             =   840
      Width           =   13545
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000016&
      BackStyle       =   0  'Transparent
      Caption         =   "Librer�a MEGA+"
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
      TabIndex        =   7
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
      TabIndex        =   6
      Top             =   195
      Width           =   5775
   End
   Begin VB.Label Label3 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Descripci�n"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   7200
      TabIndex        =   2
      Top             =   5160
      Width           =   6495
   End
   Begin VB.Label Label2 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Genero"
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
      Left            =   7200
      TabIndex        =   1
      Top             =   3480
      Width           =   6495
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Autor"
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
      Left            =   7200
      TabIndex        =   0
      Top             =   2640
      Width           =   6495
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
Attribute VB_Name = "DetalleRecomendado"
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
    Dim frm As New Recomendado
    Unload Me
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    frm.Show
End Sub

Private Sub CerrarSesion_Click()
    Dim frm As New Login
    Unload Me
    frm.Show
End Sub

Private Sub TerminarPrograma_Click()
    End
End Sub

Private Sub Form_Load()
    On Error GoTo ErrorHandler
    
    Presentacion.Caption = "Bienvenido " + nombre
    ' Inicializar la conexi�n
    AbrirConexion
    
    ' Inicializar el recordset
    Set Rec = New ADODB.Recordset
    
    ' Consulta SQL
    Dim sqlQuery As String
    sqlQuery = "SELECT catalogo.id, genero.nombre AS genero, genero.id AS id_genero, catalogo.titulo, catalogo.imagen, catalogo.descripcion, catalogo.autor, catalogo.editorial, catalogo.enlace " & _
               "FROM catalogo " & _
               "JOIN genero ON catalogo.id_genero = genero.id " & _
               "WHERE catalogo.titulo = '" & identificador & "'"
    
    ' Ejecutar la consulta
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly
    
    ' Procesar los resultados
    If Rec.EOF Then
        Label3.Caption = "No se encontraron resultados."
    Else
        Titulo.Caption = Rec.Fields("titulo").Value
        Label1.Caption = Rec.Fields("autor").Value
        Label2.Caption = Rec.Fields("genero").Value
        Label3.Caption = Rec.Fields("descripcion").Value
        Label5.Caption = Rec.Fields("editorial").Value
        Label6.Caption = Rec.Fields("id").Value
        id = Rec.Fields("id").Value
        id_genero = Rec.Fields("id_genero").Value
        
        Dim imgPath As String
        imgPath = App.Path & "\imagen\" & Rec.Fields("imagen").Value

        ' Verifica si el archivo de imagen existe
        If Dir(imgPath) <> "" Then
            Image1.Picture = LoadPicture(imgPath)
        Else
            MsgBox "La imagen no se encuentra en la ruta especificada.", vbExclamation
        End If
        
        enlace = Rec.Fields("enlace").Value
    End If
    
    ' Cerrar el recordset y la conexi�n
    Rec.Close
    CerrarConexion

    Set Rec = Nothing
    
    Exit Sub
    
ErrorHandler:
    MsgBox "Error " & Err.Number & ": " & Err.Description, vbCritical, "Error"
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
        Set Rec = Nothing
    End If
    CerrarConexion
End Sub


Private Sub Leer_Click()

    Dim sqlQuery As String
    Dim insertQuery As String
    Dim contador As Long

    ' Establece conexion con base de datos
    AbrirConexion
    Set Rec = New ADODB.Recordset

    ' Consulta SQL para ver si no hay registros similares
    sqlQuery = "SELECT COUNT(*) AS total FROM contenido_leido WHERE id_usuario = " & idRecibido & " AND id_libro = " & id
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    contador = Rec.Fields("total").Value

    ' Condici�n para insertar registro de libro leido en su tabla
    If contador = 0 Then
        insertQuery = "INSERT INTO contenido_leido (id_usuario, id_libro, id_genero) VALUES (" & idRecibido & ", " & id & ", '" & id_genero & "')"
        Con.Execute insertQuery
        MsgBox "Excelente elecci�n. Disfrute de este contenido"
        
        Shell "explorer.exe " & enlace, vbNormalFocus
    Else
        Shell "explorer.exe " & enlace, vbNormalFocus
    End If

    ' Cerrar conexi�n
    Rec.Close
    CerrarConexion

    ' Limpiar objetos
    Set Rec = Nothing

    Exit Sub

ErrorHandler:
    ' Manejo de errores
    MsgBox "Error: " & Err.Description
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
        Set Rec = Nothing
    End If
    CerrarConexion
End Sub

Private Sub luego_Click()

    Dim sqlQuery As String
    Dim insertQuery As String
    Dim contador As Long

    ' Abrir Conexion
    AbrirConexion
    Set Rec = New ADODB.Recordset

    ' Consulta SQL para ver si no hay registros similares
    sqlQuery = "SELECT COUNT(*) AS total FROM contenido_leer_mas_tarde WHERE id_usuario = " & idRecibido & " AND id_libro = " & id
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    contador = Rec.Fields("total").Value

    ' Condici�n para insertar registro de libro en su tabla
    If contador = 0 Then
        insertQuery = "INSERT INTO contenido_leer_mas_tarde (id_usuario, id_libro, id_genero) VALUES (" & idRecibido & ", " & id & ", '" & id_genero & "')"
        Con.Execute insertQuery
        MsgBox "Contenido agregado para ver mas tarde"
    Else
        MsgBox "Este contenido ya esta agregado en tu lista para ver mas tarde"
    End If

    ' Cerrar conexi�n
    Rec.Close
    CerrarConexion

    ' Limpiar objetos
    Set Rec = Nothing

    Exit Sub

ErrorHandler:
    ' Manejo de errores
    MsgBox "Error: " & Err.Description
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
        Set Rec = Nothing
    End If
    CerrarConexion

End Sub

Private Sub favorito_Click()
    'Dim Con As ADODB.Connection
    'Dim Rec As ADODB.Recordset
    Dim sqlQuery As String
    Dim insertQuery As String
    Dim contador As Long

    ' Establecer Conexion
    AbrirConexion
    Set Rec = New ADODB.Recordset

    ' Consulta SQL para ver si no hay registros similares
    sqlQuery = "SELECT COUNT(*) AS total FROM contenido_favorito WHERE id_usuario = " & idRecibido & " AND id_libro = " & id
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    contador = Rec.Fields("total").Value

    ' Condici�n para insertar registro de libro favorito en su tabla
    If contador = 0 Then
        
        Dim RecDislike As ADODB.Recordset
        Set RecDislike = New ADODB.Recordset
        
        ' Consulta para verificar que no existan registros similares en la tabla de libros no deseados
        dislikeQuery = "SELECT COUNT(*) AS total FROM contenido_eliminado WHERE id_usuario = " & idRecibido & " AND id_libro = " & id
        RecDislike.Open dislikeQuery, Con, adOpenForwardOnly, adLockReadOnly
        
        eliminado = RecDislike.Fields("total").Value
        
        ' Condici�n para insertar registro de libro favorito en su tabla, si no hay registros similares en eliminados
        If eliminado = 0 Then
            insertQuery = "INSERT INTO contenido_favorito (id_usuario, id_libro, id_genero) VALUES (" & idRecibido & ", " & id & ", '" & id_genero & "')"
            Con.Execute insertQuery
            MsgBox "Contenido agregado en tu lista de favoritos"
        Else
            MsgBox "Este contenido no puede ser agregado a tu lista de favoritos, porque esta en tu lista de listos no deseados"
        End If
        
    Else
        MsgBox "Este contenido ya esta agregado en tu lista de favoritos"
    End If

    ' Cerrar conexi�n
    Rec.Close
    CerrarConexion

    ' Limpiar objetos
    Set Rec = Nothing

    Exit Sub

ErrorHandler:
    ' Manejo de errores
    MsgBox "Error: " & Err.Description
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
        Set Rec = Nothing
    End If
    CerrarConexion
End Sub

Private Sub favgenero_Click(Index As Integer)
    ' Dim Con As ADODB.Connection
    ' Dim Rec As ADODB.Recordset
    Dim sqlQuery As String
    Dim insertQuery As String
    Dim contador As Long

    ' Establecer Conexion
    AbrirConexion
    Set Rec = New ADODB.Recordset

    ' Consulta SQL para ver si no hay registros similares
    sqlQuery = "SELECT COUNT(*) AS total FROM genero_favorito WHERE id_usuario = " & idRecibido & " AND id_genero = " & id_genero
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    contador = Rec.Fields("total").Value
    
    ' Condici�n para insertar registro de genero favorito en su tabla
    If contador = 0 Then
        insertQuery = "INSERT INTO genero_favorito (id_usuario, id_genero) VALUES (" & idRecibido & ", '" & id_genero & "')"
        Con.Execute insertQuery
       
        MsgBox "G�nero agregado a tu lista de favoritos"
    Else
        MsgBox "Este g�nero ya esta agregado en tu lista de g�neros favoritos"
    End If

    ' Cerrar el recordset y la conexi�n
    Rec.Close
    CerrarConexion

    ' Limpiar objetos
    Set Rec = Nothing
    Set Con = Nothing

    Exit Sub

ErrorHandler:
    ' Manejo de errores
    MsgBox "Error: " & Err.Description
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
        Set Rec = Nothing
    End If
    CerrarConexion

End Sub


Private Sub eliminar_Click(Index As Integer)
    Dim Recfav As ADODB.Recordset
    Dim sqlQuery As String
    Dim favQuery As String
    Dim insertQuery As String
    Dim contador As Long
    Dim favorito As Long
    
    ' Establecer conexion
    AbrirConexion
    Set Rec = New ADODB.Recordset
    Set Recfav = New ADODB.Recordset

    ' Consulta SQL para ver si no hay registros similares
    sqlQuery = "SELECT COUNT(*) AS total FROM contenido_eliminado WHERE id_usuario = " & idRecibido & " AND id_libro = " & id
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    contador = Rec.Fields("total").Value

    ' Condicion para verificar que no existan registros similares en la tabla de favoritos
    If contador = 0 Then

        ' Consulta SQL para ver si no hay registros similares en favoritos
        favQuery = "SELECT COUNT(*) AS total FROM contenido_favorito WHERE id_usuario = " & idRecibido & " AND id_libro = " & id
        Recfav.Open favQuery, Con, adOpenForwardOnly, adLockReadOnly

        favorito = Recfav.Fields("total").Value

        ' Condicion para insertar registro en su tabla, tras comprobar que no haya registros en favoritos
        If favorito = 0 Then
            insertQuery = "INSERT INTO contenido_eliminado (id_usuario, id_libro, id_genero) VALUES (" & idRecibido & ", " & id & ", '" & id_genero & "')"
            Con.Execute insertQuery
            MsgBox "Contenido agregado en tu lista de libros no deseados"
            
            Dim frm As New Recomendado
            Unload Me
            frm.idRecibido = idRecibido
            frm.nombre = nombre
            frm.Show
            
        Else
            MsgBox "Este contenido no puede ser agregado a tu lista de libros no deseados porque ya est� en tu lista de libros favoritos"
        End If

        Recfav.Close
        Set Recfav = Nothing

    Else
        MsgBox "Este contenido ya est� agregado a tu lista de libros no deseados"
    End If

    ' Cerrar conexi�n
    Rec.Close
    CerrarConexion

    ' Limpiar objetos
    Set Rec = Nothing

    Exit Sub

ErrorHandler:
    ' Manejo de errores
    MsgBox "Error: " & Err.Description
    If Not Rec Is Nothing Then
        If Rec.State = adStateOpen Then Rec.Close
        Set Rec = Nothing
    End If
    If Not Recfav Is Nothing Then
        If Recfav.State = adStateOpen Then Recfav.Close
        Set Recfav = Nothing
    End If
    CerrarConexion
End Sub

