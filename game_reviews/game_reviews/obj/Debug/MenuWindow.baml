   M S B A M L   `   `   `  ����G  Cgame_reviews, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:game_reviews.MVVM.ViewModelgame_reviews.MVVM.ViewModel  5   	   +clr-namespace:game_reviewsgame_reviews  5   	       game_reviews.MenuWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ?	ViewModel)clr-namespace:game_reviews.MVVM.ViewModel     5   	   ,localclr-namespace:game_reviews     5   	   $	��600��5	   
   $	��920��6     � WindowStyle$
  None=�5
   	    � 
ResizeMode$ NoResize=�5   	    � AllowsTransparency . 
������  � DataContext 5      /  )game_reviews.MVVM.ViewModel.MainViewModel  5   
   .��5      �� ���#272533 �� CornerRadius$ 15��5      ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5       � RowDefinitions 5      �� 5      $��75 �6    �� 5      .+�5!      �� -   5        $��logout��5!      $��1��6&   $��631,11,5,11q�6Q    J� RenderTransformOrigin$ 0.5,0.5&�6f   ���#272533
������$,��&/game_reviews;component/Fonts/#Poppins)�6�   
������z�5"      V� 5#      .~�5$      �� �� 5%       �� AngleY$ 0Q�6(   �� 5&      	 �� Angle$	 -0.408Q�6*   T� 5'      
 T� Y$
 0Q�6-   5(      5*      �� 5+      $��GamesReviews��6   $��Center=�5,      $��Center=�5-      $��25(�5.      
������$��/Fonts/#Poppins)�50      51      �� 52      $��1��6   .+�53      	� $
��Home��6   $��55��54      
������$��16(�56         MenuButtonTheme#��[  57       d� 	IsChecked$
 TrueY�58      ��59      �� *HomeViewCommand+	� 5;      $��	Game List��6   $��55��5<      
������$��16(�5>      #��[  5?      ��5@      �� *GameListsCommand+	� 5B      $��Reviews��6   $��55��5C      
������$��16(�5E      #��[  5F      ��5G      �� *ReviewViewCommand+	� 5I      $��
Add review��6   $��55��5J      
������$��16(�5L      #��[  5M      ��5N      �� *AddReviewViewCommand+	� 5Q      $��Show your review��6   $��55��5R      
������$��16(�5T      #��[  5U      ��5V      �� *ShowReviewViewCommand+5Z      �� 5\      -   5        $��
UserIdText��5b   5   $��1��5\      $��Center=�5]      $��Center=�5^      $��1(�5_      $��Black"�5`      ���#272533$��/Fonts/#Poppins)�5b      65   �� 5e      $��1��6   $��1��5f      $��10q�5g      ��5h      �� *CurrentView+5j      5k      5o      5r      