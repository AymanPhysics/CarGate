   M S B A M L   `   `   `  ���� @  <OMEGA, Version=3.1.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:WpfApplication1.EmployeeTrackerWpfApplication1.EmployeeTracker  #    WpfApplication1.HelpCustomers   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     <my-clr-namespace:WpfApplication1.EmployeeTracker       � Title$
  Help��$	��627��$
��1197�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$ 
ToolWindow=�$��Times New Roman)�$��16(�$
��Bold"�$��0�� J� IsManipulationEnabled .  J� SnapsToDevicePixels .  � UseLayoutRounding . .��� .+��    Bg#���   $��10,10,12,14q�.+��� -   $��lblMSG��$��14(�$��SemiBold"�$��Center=�$��12,12,12,14q�$��Stretch=�$��Center=�����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ White��	 � Offset$	 0Q�� $ 	#FF6DD9FF��$	 1Q��� -   $��txtID��
 �� AutoWordSelection
 . $��28��$
��Left=�$��	23,77,0,0q� �� 	MaxLength$ 10��$��0��$	��Top=�$��80��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -   $��	txtArName��
 . $��28��$��Stretch=�$��109,77,619.8,0q�$	 100��$��1��$	��Top=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.��&   System.Windows.Controls.DataGrid  -   $��DataGridView1��$��23,111,23,25q�   CanUserSortColumns .    CanUserResizeColumns .    CanUserReorderColumns .     CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    	RowHeight$ 24Q�����    RowStyle ��  �� 
TargetType)  #System.Windows.Controls.DataGridRow"  .���  �� Property � �� �� Value �� *	MyColor+ � 	Resources  �� 	Resources �� Color��%q   '        �� "   ���� $ 	#FF07B4FF��(��       *1/SystemColors.InactiveSelectionHighlightBrushKey+)2   ,WpfApplication1.EmployeeTracker.BannerHeader  -     Name$ Banner1��$��50��$��
23,21,23,0q�$	��Top=��� -   $��txtMob��
 . $��28��$��Right=�$��0,77,319.8,0q�$	 100��$��4��$	��Top=�$��96��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -   $��
txtAddress��
 . $��28��$��Right=�$��0,77,195.8,0q�$	 100��$��5��$	��Top=�$	��120��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -   $��txtTel��
 . $��28��$��Right=�$��0,77,419.8,0q�$	 100��$��3��$	��Top=�$��96��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -	    ��Name$ btnSave��$��+��$��Right=�$��	0,21,36,0q�$��34��$	��Top=�$��62��$��50��  GlossyCloseButton#��[  J� RenderTransformOrigin$ 8.207,-0.825&����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#B43030F4��$	 0Q�� $ 	#FF575757��$	 1Q��� -
    ��Name$ CboAccNo��$��28��$��Right=�$��0,77,23.8,0q�$��5��$	��Top=�$	��167�� �� 
IsEditable .  ���� $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q��� -    ��Name$ 
NationalId��
 . $��28��$��Right=�$��0,77,518.8,0q�$	 100��$��3��$	��Top=�$��96��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.��