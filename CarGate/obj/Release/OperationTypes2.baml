   M S B A M L   `   `   `  ���� @  <OMEGA, Version=3.1.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  %    WpfApplication1.OperationTypes2   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -my1clr-namespace:WpfApplication1     .���    Bg#���   $��Stretch=�$��Stretch=�$��0q�.+�� $��Stretch=�$��12,14,10,94q�����   �� EndPoint$  0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ White�� � Offset$ 0Q�� $ 	#FF6DD9FF��$ 1Q�.+��� -   $��txtID��$��28��$��144,24,0,389q�$��78�� �� 	MaxLength$ 10��$��0�� �� AutoWordSelection . $
��Left=�$��Center=�.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $��txtName��$��28��$��144,54,0,359q�$	��398��$	 100��$��1�� . $
��Left=�$��Center=�$��RightToLeft=�.������ $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�.���� -   $��lblId��$��Id��$��28��$��Center=�$��10,24,0,389q� � UseLayoutRounding . $	��124��$��1q����	#FF078200���	#FF078200$
��Left=�$��Center=��� -   $��	lblArName��$
��Name��$��28��$��Center=�$��10,54,0,359q� . $	��124��$��1q����	#FF078200���	#FF078200$
��Left=�$��Center=��� -    ��Name$ Waiter��$��
مندوب��$��16��$
��Left=�$��13��$��Center=�$	��120��$��284,375,0,101q�$y�Hidden=�7  1System.Windows.Forms.Integration.WindowsFormsHost  -     Name$
 WFH0��$��9,182,395,10q�	   TabIndex$		 333��$	��249��$��Center=�
   
Background
 Z� �� -    ��Name$ lblMotionType��$��التوصيف��$��28��$
��Left=�$��Center=�$��10,86,0,327q� . $��Center=�$	��124��$��1q����	#FF078200���	#FF078200�� -    ��Name$ OperationDescriptionId��$��28��$
��Left=�$��144,86,0,327q�$��5��$��Center=�$	��398�� �� 
IsEditable .  $ �� IsSynchronizedWithCurrentItem Z� ���� $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q��� -	   $ lblMotionType_Copy��$��أسعار الباكدج��$��28��$
��Left=�$��Center=�$��10,120,0,293q� . $��Center=�$	��124��$��1q����	#FF078200���	#FF078200�� -
   $ 
CalcBefore��$@��:احتساب النسب قبل خصم المستلزمات��$��16��$
��Left=�$��18��$��Center=�$	��188��$��144,126,0,299q��� -   $ 	CalcAfter��$@��:احتساب النسب بعد خصم المستلزمات��$��16��$
��Left=�$��18��$��Center=�$	��188��$��354,126,0,299q�  -   $	 WFH��$��0,182,10,10q�$		 333��$	��249��$��Center=�$��Right=�$	��380��
 Z� �� -   $ CalcConsumablesValue��$;��5الاحتساب بنظام حد المستلزمات��$��16��$
��Left=�$��18��$��Center=�$	��188��$��144,147,0,278q��� -   $ 	CalcItems��$"��صرف أصناف معينة��$��16��$
��Left=�$��18��$��Center=�$	��188��$��354,147,0,278q��� -   $��btnFirst��$��First��$��Center=�$��293,0,544,5q�$��36��$��Bottom=�$��82�� 
 BgSave#���  ��.  �� -   $��
btnPrevios��$��Previous��$��Center=�$��381,0,456,5q�$��37��$��Bottom=�$��82��#���  ��.  �� -   $��btnNext��$
��Next��$��Center=�$��470,0,367,5q�$��38��$��Bottom=�$��82��#���  ��.  �� -   $��btnLast��$
��Last��$��Center=�$��558,0,279,5q�$��39��$��Bottom=�$��82��#���  ��.  �� -   $��btnSave��$
��Save��$��293,0,456,51q�$��34��$��Bottom=�$��Center=�$	��170��#���  ��.  �� -   $��btnNew��$	��New��$��Center=�$��470,0,367,51q�$��35��$��Bottom=�$��82�� 	 BgNew#���  ��.  �� -   $��	btnDelete��$��Delete��$��558,0,279,51q�$��35��$��Bottom=�$��Center=�$��82��  BgDelete#���  ��.  