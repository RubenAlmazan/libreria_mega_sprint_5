Attribute VB_Name = "BaseDatos"
' BaseDatos.bas

Option Explicit

Public Con As ADODB.Connection

Public Sub AbrirConexion()
    On Error GoTo ErrorHandler
    
    Set Con = New ADODB.Connection
    ' Ingrese los datos de conexion de su base de datos
    Con.Open "Driver={SQL Server}; Server= ; Database= ; User Id= ; Password= ;"
    
    Exit Sub

ErrorHandler:
    MsgBox "Error al abrir la conexión: " & Err.Description
    If Not Con Is Nothing Then
        If Con.State = adStateOpen Then Con.Close
        Set Con = Nothing
    End If
End Sub

Public Sub CerrarConexion()
    If Not Con Is Nothing Then
        If Con.State = adStateOpen Then Con.Close
        Set Con = Nothing
    End If
End Sub

