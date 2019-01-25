namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Program")]
    public partial class Program : BaseEntity
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Program()
        {
            Schedules = new HashSet<Schedule>();
            ScheduleTemplates = new HashSet<ScheduleTemplate>();
        }

        public int ID { get; set; }

        public string Name { get; set; }

        public double? Duration { get; set; }

        public string PerformBy { get; set; }

        public int ProgramTypeID { get; set; }

        public bool? IsActive { get; set; }

        public virtual ProgramType ProgramType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Schedule> Schedules { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleTemplate> ScheduleTemplates { get; set; }
    }
}
