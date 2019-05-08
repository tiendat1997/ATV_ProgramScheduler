namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProgramScheduleDetail")]
    public partial class ProgramScheduleDetail
    {
        public int ID { get; set; }

        public int ProgramScheduleID { get; set; }

        public int DayOfWeek { get; set; }

        public TimeSpan TimeOfDate { get; set; }

        public bool IsActive { get; set; }

        public virtual ProgramSchedule ProgramSchedule { get; set; }
    }
}
