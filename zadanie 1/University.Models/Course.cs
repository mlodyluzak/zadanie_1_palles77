﻿using System;
using System.Collections.Generic;

namespace University.Models
{
    public class Course
    {
        public string CourseCode { get; set; } = string.Empty;
        public string Title { get; set; } = string.Empty;
        public string Instructor { get; set; } = string.Empty;
        public string Schedule { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public int Credits { get; set; } = 0;
        public string Department { get; set; } = string.Empty;
        public bool IsSelected { get; set; } = false;
    }
}
