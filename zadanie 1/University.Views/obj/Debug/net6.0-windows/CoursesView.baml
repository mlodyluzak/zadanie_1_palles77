   M S B A M L   `   `   `  ����  University.Views#    University.Views.SubjectsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5	      �� 5
      $6 0/University.Views;component/SharedResources.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ]� $��0��6   $��False��6!   .+�5      �� $��Add Subject��6   $��Right=�6C   $��5q�6Z      PrimaryButton#��[  6e   
 � Tag$	 ��6�   ��6+   �� *Add+6�   5      �� 5   
   $��1��6   $��0q�6@     ListViewPrimaryItem#��[ 6T   ��6    �� *	Courses+ �� View 5      �� 5      .P�5      �� $
��Code��6%    �� DisplayMemberBinding 63   �� *
CourseCode+ �� CellTemplate 5      �� 5      .R�5   "   �� ��6,   �� *
CourseCode+5      5      �� 5       $��Title��6%    64   �� *Title+ 5!      �� 5"      .R�5#   "   �� ��6,   �� *Title+5$      5&      �� 5'      $��
Instructor��6%    69   �� *
Instructor+ 5(      �� 5)      .R�5*   "   �� ��6,   �� *
Instructor+5+      5-      �� 5.      $��Schedule��6%    67   �� *
Schedule+ 5/      �� 50      .R�51   "   �� ��6,   �� *
Schedule+52      54      �� 55      $��Description��6%    6:   �� *Description+ 56      �� 57      .R�58   "   �� ��6,   �� *Description+59      5;      �� 5<      $��Credits��6%    66   �� *	Credits+ 5=      �� 5>      .R�5?   "   �� ��6,   �� *	Credits+5@      5B      �� 5C      $��
Department��6%    69   �� *
Department+ 5D      �� 5E      .R�5F   "   �� ��6,   �� *
Department+5G      5I      �� 5J      $
��Edit��6%    5K      �� 5L      .R�5M   "   ��   SecondaryButton#��[ 6�   $	 ��6�   ��6)   �� *DataContext.Edit+ �� RelativeSource �� *FindAncestor+	 �� AncestorType	 UserControl��6�   �� *
CourseCode+6�   5N      5P      �� 5Q      $��Remove��6%    5R      �� 5S      .R�5T   "   �� #��[ 6�   $	 ��6�   ��6)   �� *DataContext.Remove+ �� *FindAncestor+	 UserControl��6�   �� *
CourseCode+6�   5U      5W      5X      5Z      5[      5\      