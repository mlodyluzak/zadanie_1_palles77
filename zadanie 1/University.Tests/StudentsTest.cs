using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection.Emit;
using University.Data;
using University.Interfaces;
using University.Models;
using University.Services;
using University.ViewModels;

namespace University.Tests;

[TestClass]
public class StudentsTest
{
    private IDialogService _dialogService;
    private DbContextOptions<UniversityContext> _options;

    [TestInitialize()]
    public void Initialize()
    {
        _options = new DbContextOptionsBuilder<UniversityContext>()
            .UseInMemoryDatabase(databaseName: "UniversityTestDB")
            .Options;
        SeedTestDB();
        _dialogService = new DialogService();
    }

    private void SeedTestDB()
    {
        using UniversityContext context = new UniversityContext(_options);
        {
            context.Database.EnsureDeleted();
            List<Student> students = new List<Student>
            {
                new Student { StudentId = 1, Name = "Wieczys�aw", LastName = "Nowakowicz", PESEL="87052296551", BirthDate = new DateTime(1987, 05, 22) },
                new Student { StudentId = 2, Name = "Krzysztof", LastName = "Nowakowicz", PESEL = "16262586358", BirthDate = new DateTime(2016, 06, 25) },
                new Student { StudentId = 3, Name = "Eugenia", LastName = "Nowakowicz", PESEL = "21260864487", BirthDate = new DateTime(2021, 06, 08) }
            };
            List<Course> courses = new List<Course>
            {
                new Course { CourseCode = "MAT", Title = "Matematyka", Instructor = "Michalina Beldzik", Schedule = "schedule1", Description = "description1", Credits = 5, Department = "department1" },
                new Course { CourseCode = "BIOL", Title = "Biologia", Instructor = "Halina", Schedule = "schedule2", Description = "description2", Credits = 6, Department = "department3" },
                new Course { CourseCode = "CHEM", Title = "Chemia", Instructor = "Jan Nowak", Schedule = "schedule3", Description = "description3", Credits = 7, Department = "department3" }
            };
            context.Students.AddRange(students);
            context.Courses.AddRange(courses);
            context.SaveChanges();
        }
    }

    [TestMethod]
    public void Show_all_students()
    {
        using UniversityContext context = new UniversityContext(_options);
        {
            StudentsViewModel studentsViewModel = new StudentsViewModel(context, _dialogService);
            bool hasData = studentsViewModel.Students.Any();
            Assert.IsTrue(hasData);
        }
    }

    [TestMethod]
    public void Add_studend_without_subjects()
    {
        using UniversityContext context = new UniversityContext(_options);
        {
            AddStudentViewModel addStudentViewModel = new AddStudentViewModel(context, _dialogService)
            {
                Name = "John",
                LastName = "Doe",
                PESEL = "67111994116",
                BirthDate = new DateTime(1967, 12, 06)
            };
            addStudentViewModel.Save.Execute(null);

            bool newStudentExists = context.Students.Any(s => s.Name == "John" && s.LastName == "Doe" && s.PESEL == "67111994116");
            Assert.IsTrue(newStudentExists);
        }
    }

    [TestMethod]
    public void Add_studend_with_subjects()
    {
        using UniversityContext context = new UniversityContext(_options);
        {
            Random random = new Random();
            int toSkip = random.Next(0, context.Courses.Count());
            Course subject = context.Courses.OrderBy(x => x.CourseCode).Skip(toSkip).Take(1).FirstOrDefault();
            subject.IsSelected = true;

            AddStudentViewModel addStudentViewModel = new AddStudentViewModel(context, _dialogService)
            {
                Name = "John",
                LastName = "Doe II",
                PESEL = "67111994116",
                BirthDate = new DateTime(1967, 12, 06),
                AssignedCourses = new ObservableCollection<Course>
            {
                subject
            }
            };
            addStudentViewModel.Save.Execute(null);

            bool newStudentExists = context.Students.Any(s => s.Name == "John" && s.LastName == "Doe II" && s.PESEL == "67111994116" && s.Courses.Any());
            Assert.IsTrue(newStudentExists);
        }
    }

    [TestMethod]
    public void Add_Studend_without_name()
    {
        using UniversityContext context = new UniversityContext(_options);
        {
            AddStudentViewModel addStudentViewModel = new AddStudentViewModel(context, _dialogService)
            {
                LastName = "Doe  III",
                PESEL = "67111994116",
                BirthDate = new DateTime(1967, 12, 06)
            };
            addStudentViewModel.Save.Execute(null);

            bool newStudentExists = context.Students.Any(s => s.LastName == "Doe III" && s.PESEL == "67111994116");
            Assert.IsFalse(newStudentExists);
        }
    }

    [TestMethod]
    public void Add_Studend_without_last_name()
    {
        using UniversityContext context = new UniversityContext(_options);
        {
            AddStudentViewModel addStudentViewModel = new AddStudentViewModel(context, _dialogService)
            {
                Name = "John IV",
                PESEL = "67111994116",
                BirthDate = new DateTime(1967, 12, 06)
            };
            addStudentViewModel.Save.Execute(null);

            bool newStudentExists = context.Students.Any(s => s.Name == "John IV" && s.PESEL == "67111994116");
            Assert.IsFalse(newStudentExists);
        }
    }

    [TestMethod]
    public void Add_Studend_without_PESEL()
    {
        using UniversityContext context = new UniversityContext(_options);
        {
            AddStudentViewModel addStudentViewModel = new AddStudentViewModel(context, _dialogService)
            {
                Name = "John",
                LastName = "Doe V",
                BirthDate = new DateTime(1967, 12, 06)
            };
            addStudentViewModel.Save.Execute(null);

            bool newStudentExists = context.Students.Any(s => s.Name == "John" && s.LastName == "Doe V");
            Assert.IsFalse(newStudentExists);
        }
    }
}
