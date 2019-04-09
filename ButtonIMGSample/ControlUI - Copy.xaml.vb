Imports System.Windows
Imports Corel.Interop.VGCore

Public Class ControlUI2
    Private WithEvents corelApp As Corel.Interop.VGCore.Application
    Private currentTheme As String
    Sub New(ByVal corelApp As Object)
        InitializeComponent()
        Try
            Me.corelApp = TryCast(corelApp, Corel.Interop.VGCore.Application)
            'Me.corelApp.OnApplicationEvent += CorelApp_OnApplicationEvent()
        Catch
            Global.System.Windows.MessageBox.Show("VGCore Erro")
        End Try

    End Sub

End Class
