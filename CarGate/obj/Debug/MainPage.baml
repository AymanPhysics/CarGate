   M S B A M L   `   `   `  ����B  >CarGate, Version=3.1.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5
   	       WpfApplication1.MainPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   )SampleControlsSampleControls     5	   	   +yclr-namespace:WpfApplication1     5
   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   2   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      -   5        $��GridSampleViewerPage��5        N� WindowTitle$  Animation Gallery��5      .��5      � $��0,1,0,-1q�6   .+�5      �� -   5        $��SampleGridBorder��5      $��1q�5      
�������$��Stretch=�5      ._�5      � -   5        $��
SampleGrid��5      .+�5      �� -   5        $	��tab��5      $
��Bold"�6(   $��16(�6:   $��Times New Roman)�6H   5      5      z�5      T� 5   
   -   5         SampleGridTranslateTransform�� T� X$ 0Q�5   C    T� Y$ 0Q�6I   5      �� 5       -   5        $��SampleDisplayBorder��5       
�������$��1q�6;   $y�	Collapsed=�5!      ���	#FF0967A8._�5"      ]� $��10q�5#   	   $��Stretch=�6   .+�5&   
   �� -   5        $��btnBack��5&      $
��Left=�5'      $��50��5(      $��50��6   ��.  ��5)      �� 5*       �� ImageSource$ Images/button back.png��6%    � Triggers 5,      :� 5-       :� RoutedEvent$ Button.Click��6   .[�5.      ��  �� HandoffBehavior$ SnapshotAndReplace=�6    .��5/      �� .��50      W�  �� 
TargetName$ 
SampleGrid��51       �� TargetProperty$ Opacity�52      	 W� From$	 0X�53      	
 W� To$
 1X�54       g� 	BeginTime$ 0:0:0X�55       g� Duration$ 0:0:1D�56      W� 58      $" SampleGridTranslateTransform��59      $ X�5:      $	 0X�5;      $
 0X�5<      $ 0:0:0X�5=      5>      5?      5@      5B       � 5E   
   -   5        $��SampleDisplayFrame��5E      
�������5F      5J   	   z�5K      T� 5L   
   -	   5        )%SampleDisplayBorderTranslateTransform��$ 0Q�5M      5O      5P      5Q      