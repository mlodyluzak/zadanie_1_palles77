﻿using System;
using System.Collections.Generic;

namespace University.Models
{
    public class Student
    {
        public long StudentId { get; set; } = 0;
        public string Name { get; set; } = string.Empty;
        public string LastName { get; set; } = string.Empty;
        public string PESEL { get; set; } = string.Empty;
        public DateTime? BirthDate { get; set; } = null;
        public string BirthPlace { get; set; } = string.Empty;
        public string ResidencePlace { get; set; } = string.Empty;
        public string AddressLine1 { get; set; } = string.Empty;
        public string AddressLine2 { get; set; } = string.Empty;
        public virtual ICollection<Course>? Courses { get; set; } = null;
        public virtual ICollection<Exam>? Exams { get; set; } = null;
    }
}
