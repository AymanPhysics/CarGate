   M S B A M L   `   `   `  ���� @  <OMEGA, Version=3.1.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:WpfApplication1.EmployeeTrackerWpfApplication1.EmployeeTracker      WpfApplication1.HelpCases   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     <my-clr-namespace:WpfApplication1.EmployeeTracker       � Title$
  Help��$	��416��$	��878�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�$��Times New Roman)�$��16(�$
��Bold"�$��0�� J� IsManipulationEnabled .  J� SnapsToDevicePixels .  � UseLayoutRounding . .��� .+��    Bg#���   $��10,10,12,14q�.+��� -   $��lblMSG��$��14(�$��SemiBold"�$��Center=�$��12,12,12,14q�$��Stretch=�$��Center=�����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ White��	 � Offset$	 0Q�� $ 	#FF6DD9FF��$	 1Q��� -   $��txtID��
 �� AutoWordSelection
 . $��28��$
��Left=�$��	23,77,0,0q� �� 	MaxLength$ 10��$��0��$	��Top=�$��80��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -   $��	txtArName��
 . $��28��$��Stretch=�$��109,77,576,0q�$	 100��$��1��$	��Top=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.��&   System.Windows.Controls.DataGrid  -   $��DataGridView1��$��23,111,23,25q�   CanUserSortColumns .   BgDelete   AlternatingRowBackground# �   	 BgNew   RowBackground# �     CanUserReorderColumns .     CanUserAddRows .     CanUserDeleteRows .     
IsReadOnly .    	RowHeight$ 22Q� � 	Resources )  #System.Windows.Controls.DataGridRow �� 
TargetType �� 	Resources �� Color��%q   '        �� "   ���� $ 	#FF07B4FF��(��       *1/SystemColors.InactiveSelectionHighlightBrushKey+)2   ,WpfApplication1.EmployeeTracker.BannerHeader  -     Name$ Banner1��$��50��$��
23,21,23,0q�$	��Top=��� -   $��txtMob��
 . $��28��$��Right=�$��
0,77,149,0q�$	 100��$��4��$	��Top=�$��80��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -   $��
txtAddress��
 . $��28��$��Right=�$��	0,77,23,0q�$	 100��$��5��$	��Top=�$	��120��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -   $��txtTel��
 . $��28��$��Right=�$��
0,77,235,0q�$	 100��$��3��$	��Top=�$��80��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -	   $��
NationalId��
 . $��28��$��Right=�$��
0,77,321,0q�$	 100��$��2��$	��Top=�$��80��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -
   $��	txtEnName��
 . $��28��$��Right=�$��
0,77,408,0q�$	 100��$��1��$	��Top=�$	��162��.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$	 0Q�� $ 	#37FFFF00��$	 1Q�.���� -    ��Name$ btnSave��$��+��$��Right=�$��	0,21,36,0q�$��34��$	��Top=�$��62��$��50��  GlossyCloseButton#��[  J� RenderTransformOrigin$ 8.207,-0.825&����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#B40000FF��$	 0Q�� $ Black��$	 1Q�