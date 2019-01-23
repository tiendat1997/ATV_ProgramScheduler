namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Schedule")]
    public partial class Schedule
    {
        public int ID { get; set; }

        public int ProgramID { get; set; }

        public int DateID { get; set; }

        public int Position { get; set; }

        public string Contents { get; set; }

        public string PerformBy { get; set; }

        public double Duration { get; set; }

        public string Note { get; set; }

        public bool? IsNoted { get; set; }

        public bool? IsActive { get; set; }

        public virtual Date Date { get; set; }

        public virtual Program Program { get; set; }
    }
}
