﻿#ExternalChecksum("..\..\BannerHeader.xaml","{8829d00f-11b8-4213-878b-770e8597ac16}","1BA9C4498F640598B93723167DD1F299936FE173A9DA8B8D68FE6BE5E9DAF601")
'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:4.0.30319.42000
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On

Imports System
Imports System.Diagnostics
Imports System.Windows
Imports System.Windows.Automation
Imports System.Windows.Controls
Imports System.Windows.Controls.Primitives
Imports System.Windows.Data
Imports System.Windows.Documents
Imports System.Windows.Forms.Integration
Imports System.Windows.Ink
Imports System.Windows.Input
Imports System.Windows.Markup
Imports System.Windows.Media
Imports System.Windows.Media.Animation
Imports System.Windows.Media.Effects
Imports System.Windows.Media.Imaging
Imports System.Windows.Media.Media3D
Imports System.Windows.Media.TextFormatting
Imports System.Windows.Navigation
Imports System.Windows.Shapes
Imports System.Windows.Shell

Namespace EmployeeTracker
    
    '''<summary>
    '''BannerHeader
    '''</summary>
    <Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>  _
    Partial Public Class BannerHeader
        Inherits System.Windows.Controls.UserControl
        Implements System.Windows.Markup.IComponentConnector
        
        
        #ExternalSource("..\..\BannerHeader.xaml",68)
        <System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")>  _
        Friend WithEvents R2 As System.Windows.Shapes.Rectangle
        
        #End ExternalSource
        
        
        #ExternalSource("..\..\BannerHeader.xaml",77)
        <System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")>  _
        Friend WithEvents R As System.Windows.Shapes.Rectangle
        
        #End ExternalSource
        
        
        #ExternalSource("..\..\BannerHeader.xaml",86)
        <System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")>  _
        Friend WithEvents lblMain As System.Windows.Controls.TextBlock
        
        #End ExternalSource
        
        Private _contentLoaded As Boolean
        
        '''<summary>
        '''InitializeComponent
        '''</summary>
        <System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")>  _
        Public Sub InitializeComponent() Implements System.Windows.Markup.IComponentConnector.InitializeComponent
            If _contentLoaded Then
                Return
            End If
            _contentLoaded = true
            Dim resourceLocater As System.Uri = New System.Uri("/CarGate;component/bannerheader.xaml", System.UriKind.Relative)
            
            #ExternalSource("..\..\BannerHeader.xaml",1)
            System.Windows.Application.LoadComponent(Me, resourceLocater)
            
            #End ExternalSource
        End Sub
        
        <System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0"),  _
         System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never),  _
         System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes"),  _
         System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity"),  _
         System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")>  _
        Sub System_Windows_Markup_IComponentConnector_Connect(ByVal connectionId As Integer, ByVal target As Object) Implements System.Windows.Markup.IComponentConnector.Connect
            If (connectionId = 1) Then
                Me.R2 = CType(target,System.Windows.Shapes.Rectangle)
                Return
            End If
            If (connectionId = 2) Then
                Me.R = CType(target,System.Windows.Shapes.Rectangle)
                Return
            End If
            If (connectionId = 3) Then
                Me.lblMain = CType(target,System.Windows.Controls.TextBlock)
                Return
            End If
            Me._contentLoaded = true
        End Sub
    End Class
End Namespace

