VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Configuracion 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   7710
   ClientLeft      =   3540
   ClientTop       =   2085
   ClientWidth     =   13860
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7710
   ScaleWidth      =   13860
   Begin VB.CommandButton Command5 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Borrar Libro"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   7200
      Width           =   6495
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Editar Libro"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   7200
      Width           =   6495
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
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   4320
      Width           =   13455
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   2055
      Left            =   120
      TabIndex        =   11
      Top             =   4920
      Width           =   13455
      _ExtentX        =   23733
      _ExtentY        =   3625
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
   Begin VB.CommandButton Command3 
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
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   3480
      Width           =   13455
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Cambiar contraseña"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   2760
      Width           =   3855
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
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   120
      PasswordChar    =   "*"
      TabIndex        =   8
      Top             =   2760
      Width           =   9255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Cambiar nombre de usuario"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2160
      Width           =   3855
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
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   2160
      Width           =   9255
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
      Left            =   12000
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
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Bienvenido a la sección de configuración. Si lo desea, aquì puede actualizar su usuario y contraseña "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   15
      Top             =   1680
      Width           =   13575
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
      TabIndex        =   4
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
      Width           =   13935
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Configuración"
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
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Width           =   13545
   End
End
Attribute VB_Name = "Configuracion"
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

Private Sub Command1_Click()

    Dim sqlQuery As String
    Dim verificarUnico As String

    If Text1.Text = "" Then
        MsgBox "El campo de texto está vacío."
        Exit Sub
    End If

    ' Abre la conexión
    AbrirConexion
    Set Rec = New ADODB.Recordset

    ' Consulta para obtener todos los usuarios
    sqlQuery = "SELECT * FROM usuario"
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    ' Recorre los registros
    Do Until Rec.EOF
        
        If idRecibido = Rec.Fields("id").Value Then

            ' Verifica si el nuevo nombre de usuario es único
            verificarUnico = "SELECT COUNT(*) as Total FROM usuario WHERE username = '" & Text1.Text & "';"
            Set RecVer = New ADODB.Recordset
            Con.Execute verificarUnico
            
            RecVer.Open verificarUnico, Con, adOpenForwardOnly, adLockReadOnly
            
            If RecVer.Fields("Total").Value = 0 Then
            
                solicitud = MsgBox("Quieres modificar tu nombre de usuario?", vbYesNo)
                If solicitud = vbYes Then
                    
                    updateUser = "UPDATE usuario SET username = '" & Text1.Text & "' WHERE id = " & idRecibido & ";"
                    Con.Execute updateUser
            
                    MsgBox "Su nombre de usuario ha sido actualizado"
                    
                    Dim frm As New MenuPrincipal
                    frm.nombre = Text1.Text
                    frm.idRecibido = idRecibido
                    Unload Me
                    frm.Show
                    
                Else
                    MsgBox "Se ha mantenido su nombre de usuario original"
                End If
                
                
            Else
                MsgBox "No puede ingresar ese nombre debido a que ya esta registrado por otro usuario"
            End If
            
            
            RecVer.Close
            Set RecVer = Nothing
            
        End If
        Rec.MoveNext
    Loop

    Rec.Close
    Set Rec = Nothing
    CerrarConexion
    Exit Sub

ErrorHandler:
    MsgBox "Error: " & Err.Description, vbCritical
    If Not Rec Is Nothing And Rec.State = adStateOpen Then Rec.Close
    If Not RecVer Is Nothing And RecVer.State = adStateOpen Then RecVer.Close
    CerrarConexion

End Sub


Private Sub Command2_Click()

    Dim sqlQuery As String
    Dim updatePassword As String

    ' Verifica si el campo de texto está vacío
    If Text2.Text = "" Then
        MsgBox "El campo de texto está vacío."
        Exit Sub
    End If

    ' Abre la conexión
    AbrirConexion
    Set Rec = New ADODB.Recordset

    ' Consulta para obtener todos los usuarios
    sqlQuery = "SELECT * FROM usuario"
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly

    ' Recorre los registros
    Do Until Rec.EOF
        
        If idRecibido = Rec.Fields("id").Value Then

            solicitud = MsgBox("¿Quieres modificar tu contraseña?", vbYesNo)
            If solicitud = vbYes Then
                
                ' Actualiza la contraseña del usuario
                updateUser = "UPDATE usuario SET password = '" & Text2.Text & "' WHERE id = " & idRecibido & ";"
                Con.Execute updateUser
                
                MsgBox "Su contraseña ha sido actualizada"
                
                ' Cierra el formulario actual y muestra el nuevo
                Dim frm As New Login
                Unload Me
                frm.Show
                
            Else
                MsgBox "Se ha mantenido su contraseña original"
            End If

            ' No es necesario cerrar RecVer ya que no se utiliza
            Exit Do ' Salir del bucle después de la actualización

        End If
        Rec.MoveNext
    Loop

    ' Cierra los objetos y la conexión
    Rec.Close
    Set Rec = Nothing
    CerrarConexion
    Exit Sub

ErrorHandler:
    MsgBox "Error: " & Err.Description, vbCritical
    If Not Rec Is Nothing And Rec.State = adStateOpen Then Rec.Close
    CerrarConexion

End Sub


Private Sub Command3_Click()
    Dim frm As New CrearLibro
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    Unload Me
    frm.Show
End Sub

Private Sub Command4_Click()
    Dim frm As New EditarLibro
    frm.idRecibido = idRecibido
    frm.nombre = nombre
    frm.identificador = Text3.Text
    Unload Me
    frm.Show
End Sub

Private Sub Command5_Click()
    
    AbrirConexion
    
    Dim sqlQuery As String
    sqlQuery = "SELECT id FROM catalogo WHERE titulo = '" & Replace(Text3.Text, "'", "''") & "'"
    
    ' Asegúrate de inicializar el Recordset y abrirlo
    Set Rec = New ADODB.Recordset
    Rec.Open sqlQuery, Con, adOpenForwardOnly, adLockReadOnly
    
    Dim idLibro As String
    idLibro = Rec.Fields("id").Value
    Rec.Close
    Set Rec = Nothing
    
    Dim resultado As VbMsgBoxResult
    resultado = MsgBox("¿Deseas eliminar este libro de la base de datos de la librería?", vbYesNo)
    
    If resultado = vbYes Then
        ' MsgBox "ID del libro: " & idLibro
        
        ' Eliminar contenido favorito asociado
        Dim deleteFavoritoQuery As String
        deleteFavoritoQuery = "DELETE FROM contenido_favorito WHERE id_libro = '" & idLibro & "'"
        Con.Execute deleteFavoritoQuery
        
        Dim deleteNoDeseadoQuery As String
        deleteNoDeseadoQuery = "DELETE FROM contenido_eliminado WHERE id_libro = '" & idLibro & "'"
        Con.Execute deleteNoDeseadoQuery
        
        Dim deleteMasTardeQuery As String
        deleteMasTardeQuery = "DELETE FROM contenido_leer_mas_tarde WHERE id_libro = '" & idLibro & "'"
        Con.Execute deleteMasTardeQuery
        
        Dim deleteLeidoQuery As String
        deleteLeidoQuery = "DELETE FROM contenido_leido WHERE id_libro = '" & idLibro & "'"
        Con.Execute deleteLeidoQuery
        
        ' Eliminar el libro del catálogo
        Dim deleteCatalogoQuery As String
        deleteCatalogoQuery = "DELETE FROM catalogo WHERE titulo = '" & Replace(Text3.Text, "'", "''") & "'"
        Con.Execute deleteCatalogoQuery
        
        MsgBox "Registro eliminado exitosamente"
        
        Dim frm As New Configuracion
        frm.idRecibido = idRecibido ' Asegúrate de que idRecibido y nombre están definidos y tienen valores válidos
        frm.nombre = nombre
        Unload Me
        frm.Show
        
    Else
        MsgBox "Registro se ha mantenido dentro de la base de datos"
    End If

    CerrarConexion
    
End Sub


Private Sub Form_Load()
    Presentacion.Caption = "Bienvenido " + nombre
    
    ' Inicializar la base de datos
    AbrirConexion
    Set Rec = New ADODB.Recordset
    
    ' Consulta para ver los registros del catalogo
    Dim sqlQuery As String
    sqlQuery = "SELECT * FROM catalogo"
    
    Rec.Open sqlQuery, Con, adOpenStatic, adLockReadOnly

    ' Consulta para contar el número de registros
    Dim countRec As ADODB.Recordset
    Set countRec = New ADODB.Recordset
    Dim countQuery As String
    countQuery = "SELECT COUNT(*) AS Total FROM catalogo "
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
    
    If idRecibido = 1 Then
        Command5.Visible = True
        Command3.Visible = True
        Text3.Visible = True
        MSFlexGrid1.Visible = True
        Command4.Visible = True
    Else
        Command5.Visible = False
        Command3.Visible = False
        Text3.Visible = False
        MSFlexGrid1.Visible = False
        Command4.Visible = False
    End If
    
        
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

Private Sub MSFlexGrid1_Click()
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

