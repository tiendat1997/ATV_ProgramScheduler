namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Date")]
    public partial class Date
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Date()
        {
            EditingHistory = new HashSet<EditingHistory>();
            MailingHistory = new HashSet<MailingHistory>();
            Schedule = new HashSet<Schedule>();
            ScheduleTemplate = new HashSet<ScheduleTemplate>();
        }

        public int ID { get; set; }

        public int WeekID { get; set; }

        [Required]
        [StringLength(200)]
        public string DateOfWeek { get; set; }

        public DateTime DateOfYear { get; set; }

        public double StartAt { get; set; }

        public virtual Week Week { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EditingHistory> EditingHistory { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MailingHistory> MailingHistory { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Schedule> Schedule { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleTemplate> ScheduleTemplate { get; set; }
    }
}
