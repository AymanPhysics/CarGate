   M S B A M L   `   `   `  ���� 	  OMEGA!    WpfApplication1.SalesMotion   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .���    Bg#���   .+�� $��13,19,14,10q�����   �� EndPoint$  0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ White�� � Offset$ 0Q�� $ 	#FF6DD9FF��$ 1Q�.+��� -    ��Name$ 
lblStoreId�����	#FF078200$��1q�$��المخزن�����	#FF078200$��28��$��Center=�$��
10,8,758,0q� � UseLayoutRounding . $	��120��$	��Top=�$
��Left=��� -   $ 	lblTypeId��$��
النوع��$��28��$
��Left=�$��Center=�$��10,74,758,0q� . $	��Top=�$	��120��$��1q����	#FF078200���	#FF078200�� -   $ lblFromDate�����	#FF078200$��1q�$��	From date�����	#FF078200$��28��$��Center=�$��284,7,484,0q� . $	��120��$	��Top=�$
��Left=�(  "System.Windows.Controls.DatePicker  -     Name$ FromDate��   FirstDayOfWeek$ Saturday=�$��28��$��409,7,350,0q�$��3��$	��129��$	��Top=�$
��Left=���. �� -   $ 	lblToDate�����	#FF078200$��1q�$��To Date�����	#FF078200$��28��$��Center=�$��546,7,222,0q� . $	��120��$	��Top=�$
��Left=�  -   $ ToDate��$ Saturday=�$��28��$��
672,7,87,0q�$��4��$	��129��$	��Top=�$
��Left=���. �� -    ��Name$ TypeId��$��28��$
��Left=�$��135,74,633,0q�$��11��$	��Top=�$	��120����. 	 �� 
IsEditable	 .  $
 �� IsSynchronizedWithCurrentItem
 Z� ���� $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q��� -   $ StoreId��$��28��$
��Left=�$��135,8,633,0q�$��11��$	��Top=�$	��120����. 	 .  
 Z� ���� $  0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#37FFFF00��$ 1Q�&   System.Windows.Controls.DataGrid  -	     Name$ DataGridView1��$��10,132,10,165q�   AlternatingRowBackground �	#37000000   RowBackground �	#FFFFFFAF   CanUserReorderColumns .     CanUserAddRows .     CanUserDeleteRows .     MinColumnWidth$ 60Q�   HeadersVisibility$ Column=�$��Stretch=�   CanUserSortColumns .  � 	Resources )  #System.Windows.Controls.DataGridRow �� 
TargetType �� 	Resources �� Color��%q   '        �� "   ���� $ 	#FF07B4FF��(��       *1/SystemColors.InactiveSelectionHighlightBrushKey+) J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect    -
   $ DataGridView2��$��	10,0,0,10q� �	#37000000 �	#FFFFFFAF .   .   .  $ 60Q�$ Column=�$��Stretch=� . $	��150��$��Bottom=�$
��Left=�$	��701�� ��%q   '        �� "   ���� $ 	#FF07B4FF��(��       *1/SystemColors.InactiveSelectionHighlightBrushKey+)     -   $ DataGridView3��$��716,0,10,10q� �	#37000000 �	#FFFFFFAF .   .   .  $ 60Q�$ Column=�$��Stretch=� . $	��150��$��Bottom=� ��%q   '        �� "   ���� $ 	#FF07B4FF��(��       *1/SystemColors.InactiveSelectionHighlightBrushKey+)   