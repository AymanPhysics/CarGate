   M S B A M L   `   `   `  ���� 	  OMEGA#    WpfApplication1.TranslateText   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     )SampleControlsSampleControls     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006      	  BgNew#���   ����   �� EndPoint$  0.5,1&� �� 
StartPoint$ 0.5,0&�.���  � Color$ Black�� � Offset$ 0Q�� $ White��$ 1Q� � ContextMenu �� -    ��Name$ cm��.@�m� -    m�Name$ MenuItemHigh��$��H-High��
 � Tag$ 0��m� -   $ MenuItemLow��$��H-Low��$ 0���� m� -   $ MenuItemHigh2��$��V-High��$ 0��m� -   $ MenuItemLow2��$��V-Low��$ 0���� m� -   $ 	MenuItem1��#���   $ 1��m� -   $ 	MenuItem2�� 
 BgSave#���  $ 2��m� -   $ 	MenuItem3��  BgDelete#���  $ 3��m� -	   $ 	MenuItem4��  SC#���  $ 4��m� -
   $ 	MenuItem5��  Bg#���  $ 5��.��]� $��10q�.+�(� -   $��Viewbox1�� (� Stretch$ Uniform=�.��� -   $��Grid1��$��0q����� 	 �� ElementName$	 RealText��
 �� Path$
 ActualWidth+5����� $	 RealText��$
 ActualWidth�.+��� -   $��StackPanel1��$��0q�$��Center=�$��Center=�.+��� -   $��
TextBorder��$��Stretch=�$��Stretch=�$��0q�._��� -   $��RealText��$��Segoe UI)�$��60 px(�
����������� $	 Viewbox1��$
 ActualWidth/2����� 	Windows 7 �� TextEffects z�  z� PositionCount$ 1��-   MyTextEffect�� z� 	Transform T� -    TextEffectTranslateTransform�� � Triggers :�  :� RoutedEvent$ TextBlock.Loaded��.[��� .���� .��W�  �� 
TargetName$" TextEffectTranslateTransform�� �� TargetProperty$ Y� W� From$ 0X�	 W� To$ 20X� g� Duration$ 
00:00:0.25D� g� AutoReverse . �� $ MyTextEffect��$ PositionStart�$ 0:0:6.5D� .  g� RepeatBehavior$ Forever��C�l�  �� Value$ 0�� �� KeyTime$ 0:0:0��l� $ 1��$ 0:0:0.5��l� $ 2��$ 0:0:1��l� $ 3��$ 0:0:1.5��l� $ 4��$ 0:0:2��l� $ 5��$ 0:0:2.5��l� $ 6��$ 0:0:3��l� $ 7��$ 0:0:3.5��l� $ 8��$ 0:0:4��l� $ 9��$ 0:0:4.5��l� $ 10��$ 0:0:5��l� $ 11��$ 0:0:5.5��l� $ 12��$ 0:0:6���� -   $��ReflectedText������ $	 
TextBorder��$
 ActualHeight����� $	 
TextBorder��$
 ActualWidth� J� OpacityMask �� $ 0.5,0&�$  0.5,1&���� $	 0.0Q�$ 	#66000000��� $	 1.0Q�$ 	#00000000����!�  !� Visual �� $	 
TextBorder�� �� RelativeTransform V� .~���  �� ScaleX$ 1Q� �� ScaleY$ -1Q�T�  T� Y$ 1Q�