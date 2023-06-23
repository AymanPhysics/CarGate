 If Md.MyProjectType = ProjectType.ClinicZohor OrElse Md.MyProjectType = ProjectType.APSD OrElse Md.MyProjectType = ProjectType.APS Then
 exec addmenu
 
 AddHandler LoadRadio(G, "OperationDescriptions").Checked, Sub(sender As Object, e As RoutedEventArgs)
 