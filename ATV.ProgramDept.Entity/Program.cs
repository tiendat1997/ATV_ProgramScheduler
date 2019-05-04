namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Program")]
    public partial class Program
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Program()
        {
            FramePlanDetail = new HashSet<FramePlanDetail>();
            ProgramSchedule = new HashSet<ProgramSchedule>();
            ScheduleDetail = new HashSet<ScheduleDetail>();
            ScheduleTemplateDetail = new HashSet<ScheduleTemplateDetail>();
        }

        public int ID { get; set; }

        public string Name { get; set; }

        public double? Duration { get; set; }

        public string PerformBy { get; set; }

        public int ProgramTypeID { get; set; }

        public bool? IsActive { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FramePlanDetail> FramePlanDetail { get; set; }

        public virtual ProgramType ProgramType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProgramSchedule> ProgramSchedule { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleDetail> ScheduleDetail { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleTemplateDetail> ScheduleTemplateDetail { get; set; }
    }
}
