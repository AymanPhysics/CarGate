   M S B A M L   `   `   `  ���� @  <OMEGA, Version=3.1.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1      WpfApplication1.MainPage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     )SampleControlsSampleControls     +yclr-namespace:WpfApplication1     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -   $��GridSampleViewerPage��  N� WindowTitle$  Animation Gallery��.��� $��0,1,0,-1q�.+��� -   $��SampleGridBorder��$��1q�
�������$��Stretch=�._�� -   $��
SampleGrid��.+��� -   $	��tab��$
��Bold"�$��16(�$��Times New Roman)�z�T� -    SampleGridTranslateTransform�� T� X$ 0Q� T� Y$ 0Q��� -   $��SampleDisplayBorder��
�������$��1q�$y�	Collapsed=����	#FF0967A8._�]� $��10q�$��Stretch=�.+��� -   $��btnBack��$
��Left=�$��50��$��50����.  ����  �� ImageSource$ Images/button back.png�� � Triggers :�  :� RoutedEvent$ Button.Click��.[���  �� HandoffBehavior$ SnapshotAndReplace=�.���� .��W�  �� 
TargetName$ 
SampleGrid�� �� TargetProperty$ Opacity�	 W� From$	 0X�	
 W� To$
 1X� g� 	BeginTime$ 0:0:0X� g� Duration$ 0:0:1D�W� $" SampleGridTranslateTransform��$ X�$	 0X�$
 0X�$ 0:0:0X� � -   $��SampleDisplayFrame��
�������z�T� -	   )%SampleDisplayBorderTranslateTransform��$ 0Q�