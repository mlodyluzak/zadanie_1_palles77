   M S B A M L   `   `   `  ����  University.Views%    University.Views.AddStudentView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        � 	Resources  5       �� MergedDictionaries �� Source�� 5   
    5	      �� 5
      $6 0/University.Views;component/SharedResources.xaml?�6%   %    5      .��5      � $	��269��6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $
��Back��6   $��0��6    $��0��6-   $��5,5,5,0q�6V   $	��100��6g   $
��Left=�6s      PrimaryButton#��[  6�   
 � Tag$	 ��6�   ��6=   �� *Back+6�   �� 5   
   $
��Save��6   $��0��6    $��2��6-   $��5,5,5,0q�6V   $	��100��6g   $��Right=�6s   #��[  6�   $	 ��6�   ��6=   �� *Save+6�   �� 5   
   $��Personal Data��6   $��1��6*   $��0��67   $��5,5,5,10q�6G   $��10q�6Y   $��2��6f   .��5      �� .+�5      � $��0,0,0,5q�6   .+�5      �� $
��Name��6      PrimaryTextBlock#��[ 6,   �� 5        PrimaryTextBox#��[ 6Q   ��6   �� *Name+ �� ValidatesOnDataErrors$
 True��6Q   5       � 5!      $��0,0,0,5q�6   .+�5"      �� $��	Last Name��6    #��[ 61   �� 5#      #��[ 6T   ��6   �� *
LastName+$
 True��6T   5$      � 5%      $��0,0,0,5q�6   .+�5&      �� $��PESEL��6    #��[ 6-   �� 5'      #��[ 6Q   ��6   �� *PESEL+$
 True��6Q   5(      � 5)      $��0,0,0,5q�6   .+�5*      �� $��
Birth Date��6    #��[ 62   �� 5+      #��[ 6U   ��6   �� *	BirthDate+$
 True��6U   5,      � 5-      $��0,0,0,5q�6   .+�5.      �� $��Birth Place��6    #��[ 63   �� 5/      #��[ 6V   ��6   �� *
BirthPlace+$
 True��6V   50      � 51      $��0,0,0,5q�6   .+�52      �� $��Address l. 1��6    #��[ 64   �� 53      #��[ 6X   ��6   �� *AddressLine1+$
 True��6X   54      � 55      $��0,0,0,5q�6   .+�56      �� $��Address l. 2��6    #��[ 64   �� 57      #��[ 6Y   ��6   �� *AddressLine2+$ False��6Y   58      � 59      $��0,0,0,5q�6   .+�5:      �� $��
Res. Place��6    #��[ 62   �� 5;      #��[ 6Z   ��6   �� *ResidencePlace+$
 True��6Z   5<      5=      5>      �� 5?   
   $��Assigned Subjects��6   $��1��6.   $��1��6;   $��0,5,5,5q�6K   $��10q�6\   .��5@      �� ��6   �� *AssignedSubjects+��5A      �� 5B      .R�5C      � $��0,0,0,5q�6    5D      �� 5E   "   $��* �63   �� 5F   "   $
��Auto �63   .+�5H      �� $��0��6(   ��5I   "   `� 5J   &    �� StringFormat$  {0} ({1}, {2})��63   .1�5K   *   ��  �� Path$
 Name�62   �� 5L   *   $ Semester�62   �� 5M   *   $ Lecturer�62   5N   '   5P      �� 5Q      $��1��6H   	 d� 	IsChecked	 6'   �� *
IsSelected+6H   5R      5S      5U      5V      �� 5W   
   $��Assigned Exams��6   $��1��6+   $��2��68   $��0,5,5,5q�6H   $��10q�6Y   .��5X      �� ��6   �� *AssignedExams+��5Y      �� 5Z      .R�5[      � $��0,0,0,5q�6    5\      �� 5]   "   $��* �63   �� 5^   "   $
��Auto �63   .+�5`      �� $��0��6(   ��5a   "   `� 5b   &   $  {0} ({1}, {2})��63   .1�5c   *   �� $ ExamId�62   �� 5d   *   $ 
CourseCode�62   �� 5e   *   $
 Date�62   5f   '   5h      �� 5i      $��1��6H   	 6'   �� *
IsSelected+6H   5j      5k      5m      5n      �� 5o   
   $��2��6.   $��2��6;   $��Center=�6O   $��0,0,0,5q�6l   ��6   �� *
Response+6l   5p      5q      