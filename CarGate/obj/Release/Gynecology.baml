   M S B A M L   `   `   `  ���� 	  OMEGA     WpfApplication1.Gynecology   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .���    Bg#���   .+�� $��12,12,12,104q����� -   Img��  �� ImageSource$  Images/surgey.jpg��.+��� -   $��txtID��$��28��$
��Left=�$��
422,45,0,0q�$	��Top=�$	��120�� �� 	MaxLength$ 10��$��1�� �� AutoWordSelection . ��.  .������  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ White�� � Offset$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $��CboMain��$��28��$
��Left=�$��
422,15,0,0q�$��0��$	��Top=�$	��306�� �� 
IsReadOnly .  �� 
IsEditable .  {�.  $	 �� IsSynchronizedWithCurrentItem	 Z� ���� $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q��� -   $��Image1��$	��114��$��Center=�$��458,15,103,29q�$*��$/OMEGA;component/Images/no.photo.gif��$
��Fill=�$��Center=�$y�Hidden=�$	��100���� -   $��btnSetImage��$��Change��$��Center=�$��566,46,13,104q�$��35��$��Center=�$y�Hidden=�$��82������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#B4FF0000��$ 0Q�� $ Black��$ 1Q��� -   $��btnSetNoImage��$��Cancel��$��Center=�$��566,94,13,56q�$��35��$��Center=�$y�Hidden=�$��82������ $ 0.5,1&�$ 0.5,0&�.��� $ 	#B4FF0000��$ 0Q�� $ Black��$ 1Q��� -   
 ��Name$
 Label15_Copy�����	#FF078200$��1q�$��Uterus�����	#FF078200$��28��$
��Left=�$��Center=�$��293,243,0,0q� � UseLayoutRounding . $	��Top=�$	��125���� -    ��Name$ 	Complaint�� . $
��Auto��$��422,275,16,0q�$
 1000��$��8��$��Stretch=�$��Stretch=� �� AcceptsReturn .  �� TextWrapping$
 Wrap=�" �� VerticalScrollBarVisibility$ Visible=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -	   $
 Label15_Copy1�����	#FF078200$��1q�$��Cervix�����	#FF078200$��28��$
��Left=�$��Center=�$��293,112,0,0q� . $	��Top=�$	��125���� -
   $ Cervix�� . $��28��$��422,112,16,0q�$
 1000��$��3��$	��Top=�$��Stretch=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $
 Label15_Copy2�����	#FF078200$��1q�$��Ovaries�����	#FF078200$��28��$
��Left=�$��Center=�$��293,144,0,0q� . $	��Top=�$	��125���� -   $ Ovaries�� . $��28��$��422,144,16,0q�$
 1000��$��4��$	��Top=�$��Stretch=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $
 Label15_Copy3�����	#FF078200$��1q�$��Valva�����	#FF078200$��28��$
��Left=�$��Center=�$��293,178,0,0q� . $	��Top=�$	��125���� -   $ Valva�� . $��28��$��422,178,16,0q�$
 1000��$��5��$	��Top=�$��Stretch=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $
 Label15_Copy4�����	#FF078200$��1q�$��Vagina�����	#FF078200$��28��$
��Left=�$��Center=�$��293,210,0,0q� . $	��Top=�$	��125���� -   $ Vagina�� . $��28��$��422,210,16,0q�$
 1000��$��6��$	��Top=�$��Stretch=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $
 
lblDayDate�����	#FF078200$��1q�$
��Date�����	#FF078200$��28��$
��Left=�$��Center=�$��
293,79,0,0q� . $	��Top=�$	��125��(  "System.Windows.Controls.DatePicker  -     Name$ DayDate��   FirstDayOfWeek$ Saturday=�$��28��$
��Left=�$��
422,79,0,0q�$��2��$	��Top=�$	��128���� -   $
 Label15_Copy5�����	#FF078200$��1q�$��	Complaint�����	#FF078200$��28��$
��Left=�$��Center=�$��293,276,0,0q� . $	��Top=�$	��125���� -   $ Uterus�� . $��28��$��422,243,16,0q�$
 1000��$��7��$	��Top=�$��Stretch=�.������ $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $��btnFirst��$��First��$��Center=�$��499,0,289,10q�$��6��$��Bottom=�$��82�� 
 BgSave#���  ��.  �� -   $��
btnPrevios��$��Previous��$��Center=�$��589,0,199,10q�$��7��$��Bottom=�$��82��#���  ��.  �� -   $��btnNext��$
��Next��$��Center=�$��677,0,111,10q�$��8��$��Bottom=�$��82��#���  ��.  �� -   $��btnLast��$
��Last��$��Center=�$��765,0,23,10q�$��9��$��Bottom=�$��82��#���  ��.  �� -   $��btnSave��$
��Save��$��499,0,201,56q�$��3��$��Bottom=�$��Center=�$	��170��#���  ��.  �� -   $��btnNew��$	��New��$��Center=�$��677,0,111,56q�$��4��$��Bottom=�$��82�� 	 BgNew#���  ��.  �� -   $��	btnDelete��$��Delete��$��765,0,23,56q�$��5��$��Bottom=�$��Center=�$��82��  BgDelete#���  ��.  �� -    ��Name$ btnInvestigations��$��Investigations��$��191,0,555,55q�$��50��$��Bottom=�$��Center=�$	��124��#���  ��.  $��40���� -   $ btnComplaint��$��	Complaint��$��62,0,684,55q�$��50��$��Bottom=�$��Center=�$	��124��#���  ��.  $��40���� -   $ btnUltraSound��$��Ultra Sound��$��191,0,555,9q�$��50��$��Bottom=�$��Center=�$	��124��#���  ��.  $��40���� -   $ btnDrugsAndDoses��$��Drugs & Doses��$��320,0,426,55q�$��50��$��Bottom=�$��Center=�$	��124��#���  ��.  $��40���� -    $ btnNeededLabTests��$��Investigations Request��$��320,0,395,9q�$��50��$��Bottom=�$��Center=�$	��155��#���  ��.  $��40���� -!   $ btnInvestigationsEntry��$��Investigations Entry��$��
31,0,684,9q�$��50��$��Bottom=�$��Center=�$	��155��#���  ��.  $��40��