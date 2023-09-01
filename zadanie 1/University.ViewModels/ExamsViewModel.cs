using CommunityToolkit.Mvvm.Input;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.ObjectModel;
using System.Windows.Input;
using University.Data;
using University.Interfaces;
using University.Models;

namespace University.ViewModels
{
    public class ExamsViewModel : ViewModelBase
    {
        private readonly UniversityContext _context;
        private readonly IDialogService _dialogService;

        private bool? _dialogResult;
        public bool DialogResult => _dialogResult ?? false;

        public ObservableCollection<Exam> Exams { get; } = new ObservableCollection<Exam>();
        public ICommand Add => new RelayCommand(AddNewExam);
        public ICommand Edit => new RelayCommand<string?>(EditExam);
        public ICommand Remove => new RelayCommand<string?>(RemoveExam);

        public ExamsViewModel(UniversityContext context, IDialogService dialogService)
        {
            _context = context ?? throw new ArgumentNullException(nameof(context));
            _dialogService = dialogService ?? throw new ArgumentNullException(nameof(dialogService));

            _context.Database.EnsureCreated();
            foreach (var exam in _context.Exams)
            {
                Exams.Add(exam);
            }
        }

        private void AddNewExam()
        {
            var instance = MainWindowViewModel.Instance();
            if (instance != null)
            {
                instance.ExamsSubView = new AddExamViewModel(_context, _dialogService);
            }
        }

        private void EditExam(string? examId)
        {
            if (!string.IsNullOrEmpty(examId))
            {
                var editExamViewModel = new EditExamViewModel(_context, _dialogService)
                {
                    ExamId = examId
                };
                var instance = MainWindowViewModel.Instance();
                if (instance != null)
                {
                    instance.ExamsSubView = editExamViewModel;
                }
            }
        }

        private void RemoveExam(string? examId)
        {
            if (!string.IsNullOrEmpty(examId))
            {
                var exam = _context.Exams.Find(examId);
                if (exam != null)
                {
                    _dialogResult = _dialogService.Show($"{exam.CourseCode} {exam.Date}");
                    if (_dialogResult == false)
                    {
                        return;
                    }

                    _context.Exams.Remove(exam);
                    _context.SaveChanges();
                }
            }
        }
    }
}
