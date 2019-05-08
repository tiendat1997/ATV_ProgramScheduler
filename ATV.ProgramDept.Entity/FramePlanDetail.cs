namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FramePlanDetail")]
    public partial class FramePlanDetail
    {
        public int ID { get; set; }

        public int ProgramID { get; set; }

        public TimeSpan? StartTime { get; set; }

        public string Contents { get; set; }

        public string PerformBy { get; set; }

        public double Duration { get; set; }

        public string Note { get; set; }

        public bool? IsActive { get; set; }

        public int? FramePlanID { get; set; }

        public string ProgramName { get; set; }

        public virtual FramePlan FramePlan { get; set; }

        public virtual Program Program { get; set; }
    }
}
