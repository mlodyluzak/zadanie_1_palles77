   M S B A M L   `   `   `  ����  University.Views     University.Views.ExamsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5	      �� 5
      $6 0/University.Views;component/SharedResources.xaml?�6%   %    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ]� $��0��6   $��False��6!   .+�5      �� $��Add Exam��6   $��Right=�6@   $��5q�6W      PrimaryButton#��[  6b   
 � Tag$	 ��6�   ��6(   �� *Add+6�   5      �� 5   
   $��1��6   $��0q�6>     ListViewPrimaryItem#��[ 6R   ��6    �� *Exams+ �� View 5      �� 5      .P�5      �� $��ID��6%    �� DisplayMemberBinding 61   �� *ExamId+ �� CellTemplate 5      �� 5      .R�5   "   �� ��6,   �� *ExamId+5      5      �� 5       $��Course��6%    65   �� *
CourseCode+ 5!      �� 5"      .R�5#   "   �� ��6,   �� *
CourseCode+5$      5&      �� 5'      $
��Date��6%    63   �� *Date+ 5(      �� 5)      .R�5*   "   �� ��6,   �� *Date+5+      5-      �� 5.      $��
Start Time��6%    69   �� *	StartTime+ �� StringFormat$ t�� 5/      �� 50      .R�51   "   �� ��6,   �� *	StartTime+$ t��52      54      �� 55      $��End Time��6%    67   �� *	EndTime+$ t�� 56      �� 57      .R�58   "   �� ��6,   �� *	EndTime+$ t��59      5;      �� 5<      $��Location��6%    67   �� *
Location+ 5=      �� 5>      .R�5?   "   �� ��6,   �� *
Location+5@      5B      �� 5C      $��	Professor��6%    68   �� *	Professor+ 5D      �� 5E      .R�5F   "   �� ��6,   �� *	Professor+5G      5I      �� 5J      $��Description��6%    6:   �� *Description+ 5K      �� 5L      .R�5M   "   �� ��6,   �� *Description+5N      5P      �� 5Q      $
��Edit��6%    5R      �� 5S      .R�5T   "   ��   SecondaryButton#��[ 6�   $	 ��6�   ��6)   �� *DataContext.Edit+	 �� RelativeSource	 �� *FindAncestor+
 �� AncestorType
 UserControl��6�   �� *ExamId+6�   5U      5W      �� 5X      $��Remove��6%    5Y      �� 5Z      .R�5[   "   �� #��[ 6�   $	 ��6�   ��6)   �� *DataContext.Remove+	 �� *FindAncestor+
 UserControl��6�   �� *ExamId+6�   5\      5^      5_      5a      5b      5c      