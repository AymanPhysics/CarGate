   M S B A M L   `   `   `  ���� @  <OMEGA, Version=3.1.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:WpfApplication1.EmployeeTrackerWpfApplication1.EmployeeTracker  "    WpfApplication1.MyMainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     <my-clr-namespace:WpfApplication1.EmployeeTracker       � Title$  	O M E G A��$��479.975��$	��721�� � WindowState$ 	Maximized=� � WindowStyle$
 None=�$��Times New Roman)�$
��Bold"�$��16(�.��� .+�� -   $��Grid1��$
��0,39q� � ColumnDefinitions �� $
��Auto ��� $
��732* �.+��� -   $��Border1��$��1�� �� CornerRadius$ 3,3,3,3�����	#FFA5A5A5$��1,1,1,1q�$��8,5,5,6q�._�� -   $��MainGrid��.+��� -   $��TabControl1��$��	-1,0,0,-1q�$��0q�,   &WpfApplication1.EmployeeTracker.Banner  -     Name$ Banner1��$��36��$��8,5,6,0q�$	��Top=�1   +WpfApplication1.EmployeeTracker.BlankBanner  -     Name$ Banner2��$��35��$��8,0,6,6q�$��Bottom=��� -   $��btnExit��$
��Exit��$��Right=� �� IsCancel .  $��0,0,12,6q�$	��136��$��Bottom=�$��34��   GlossyCloseButton#���   ��.  ����  �� EndPoint$ 0.5,1&�	 �� 
StartPoint$	 0.5,0&�.��� 
 � Color$	
 Red�� � Offset$ 0Q�� $
 	#52000000��$ 1Q����� $ 0.5,1&�$	 0.5,0&�.��� $
 White��$ 0Q�� $
 	#FF868686��$ 1Q��� -   $��	btnLogout��$��Logout��$
��Left=� .  $��12,0,0,6q�$��Bottom=�$	��137��#��[  $��34����.  ���� $ 0.5,1&�$	 0.5,0&�.��� $	
 Red��$ 0Q�� $
 	#52000000��$ 1Q����� $ 0.5,1&�$	 0.5,0&�.��� $
 White��$ 0Q�� $
 	#FF868686��$ 1Q��� -	    ��Name$ btnChangeLanguage��$��ع��$��Right=� .  $��0,6,12,0q�$��40��$	��Top=�$��34��#��[  ��.  ���� $ 0.5,1&�$	 0.5,0&�.��� $	
 Red��$ 0Q�� $
 	#52000000��$ 1Q����� $ 0.5,1&�$	 0.5,0&�.��� $
 White��$ 0Q�� $
 	#FF868686��$ 1Q��� -
   $ btnMinimize��$��-��$
��Left=� .  $��12,6,0,0q�$��40��$	��Top=�$��34��#��[  ��.  ���� $ 0.5,1&�$	 0.5,0&�.��� $	
 Red��$ 0Q�� $
 	#52000000��$ 1Q����� $ 0.5,1&�$	 0.5,0&�.��� $
 White��$ 0Q�� $
 	#FF868686��$ 1Q��� -    ��Name$ langSwitcher��$��36��
������ $��Disabled=�$��Disabled=� �� SelectedIndex$ 0��  
MyComboBox#��[  �� 
IsEditable .    
lang_names � DataContext# [ $��	0,5,168,0q�$��Right=�$��87��$	��Top=�$ �� IsSynchronizedWithCurrentItem$ falseY�����  �� Source# [  �� XPath$ language������ .R���  �� Orientation$ 
Horizontal=�y��� $ @Visibility��.+��� $��Bottom=�$��Stretch=�$��42��$��42������ $ @Image���� $	��   ��$��Center=�$��15(�
����  ��� $��Center=�$��15(�
����  ����� $ @Name���� -   $ layoutSwitcher��$��36��
������ $��Disabled=�$��Disabled=�$ 0��#��[  .    	lay_names# [ $��0,5,10,0q�$��Right=�$	��166��$	��Top=�$ falseY����� # [ $ layout������ .R��� $ 
Horizontal=�y��� $ @Visibility��.+��� $��Bottom=�$��Stretch=�$��42��$��30������ $ @Image���� $	��   ��$��Center=�$��15(�
����  ��� $��Center=�$��15(�
����  ����� $ @Name��o� -   $��MyMenu��$��28��$	��Top=�$��
57,8,293,0q�$��11(�