   M S B A M L   `   `   `  ���� 	  OMEGA     WpfApplication1.CallCenter   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .���    Bg#���   .+�� $��13,19,14,59q�����   �� EndPoint$  0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ White�� � Offset$ 0Q�� $ 	#FF6DD9FF��$ 1Q�.+��� -    ��Name$ EmpName�� �� AutoWordSelection . $��28��$
��Left=� �� 
IsReadOnly . ��.  $��
281,10,0,0q� �� 	MaxLength$	 100��$��1��$	��Top=�$	��250��.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -    ��Name$ lblEmpId�����	#FF078200$��1q�$��Employee�����	#FF078200$��28��$
��Left=�$��Center=�$��	28,10,0,0q�	 � UseLayoutRounding	 . $	��Top=�$	��120���� -   $ EmpId�� . $��28��$
��Left=�$��
154,10,0,0q�$ 10��$��0��$	��Top=�$	��118��.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $ 
lblDayDate�����	#FF078200$��1q�$��Day Date�����	#FF078200$��28��$��Center=�$��	28,43,0,0q�	 . $	��120��$	��Top=�$
��Left=�(  "System.Windows.Controls.DatePicker  -   
  Name$
 DayDate��   FirstDayOfWeek$ Saturday=�$��28��$��
154,43,0,0q�$��3��$	��129��$	��Top=�$
��Left=��� -   $ lblCallerId�����	#FF078200$��1q�$��Caller Tel.�����	#FF078200$��28��$��Center=�$��
28,142,0,0q�	 . $	��120��$
��Left=�$	��Top=��� -   $ Notes��$
��Auto��$��154,240,55,14q�$
 4000��$��4��$��Stretch=�$��Stretch=� .  �� AcceptsReturn .  �� TextWrapping$
 Wrap=�" �� VerticalScrollBarVisibility$ Visible=�.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $ lblStartTime�����	#FF078200$��1q�$��
Start Time�����	#FF078200$��28��$��Center=�$��	28,76,0,0q�	 . $	��120��$	��Top=�$
��Left=��� -	   $ 	StartTime�����	#FF078200$��1q�$�� �����	#FF078200$��28��$��Center=�$��
154,76,0,0q�	 . $	��120��$	��Top=�$
��Left=��� -
   $ 
lblEndTime�����	#FF078200$��1q�$��End Time�����	#FF078200$��28��$��Center=�$��
282,76,0,0q�	 . $	��120��$	��Top=�$
��Left=��� -   $ EndTime�����	#FF078200$��1q�$�� �����	#FF078200$��28��$��Center=�$��
408,76,0,0q�	 . $	��120��$	��Top=�$
��Left=��� -   $ lblCategoryId��$��Category��$��28��$
��Left=�$��Center=�$��
28,109,0,0q�	 . $	��Top=�$	��120��$��1q����	#FF078200���	#FF078200�� -    ��Name$ 
CategoryId��$��28��$
��Left=�$��156,109,0,0q�$��0��$	��Top=�$	��372�� �� 
IsEditable .  $ �� IsSynchronizedWithCurrentItem Z� ���� $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q��� -   $ lblNotes�����	#FF078200$��1q�$��Remarks�����	#FF078200$��28��$��Center=�$��
28,240,0,0q�	 . $	��120��$
��Left=�$	��Top=��� -   $ CallerId�� . $��28��$
��Left=�$��156,142,0,0q�$ 20��$��1��$	��Top=�$	��118��.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $ 
CallerName�� . $��28��$
��Left=�$��156,175,0,0q�$
 1000��$��2��$	��Top=�$	��372��.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $ 
lblAddress�����	#FF078200$��1q�$��Address�����	#FF078200$��28��$��Center=�$��
28,207,0,0q�	 . $	��120��$
��Left=�$	��Top=��� -   $ Address�� . $��28��$
��Left=�$��156,207,0,0q�$
 1000��$��3��$	��Top=�$	��372��.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $ lblCallerName�����	#FF078200$��1q�$��Caller Name�����	#FF078200$��28��$��Center=�$��
28,174,0,0q�	 . $	��120��$
��Left=�$	��Top=��� -   $��Button2��$��	Calculate��$��Center=�$��20��$��Bottom=�$	��380��$��	12,0,12,9q�  GlossyCloseButton#��[ $��44��
���   � 
 BgSave#���  