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
            FramePlan = new HashSet<FramePlan>();
            MailingHistory = new HashSet<MailingHistory>();
            Schedule = new HashSet<Schedule>();
            ScheduleTemplate = new HashSet<ScheduleTemplate>();
        }

        public int ID { get; set; }

        public int WeekID { get; set; }

        public int DayOfWeek { get; set; }

        public DateTime DateOfYear { get; set; }

        public double StartAt { get; set; }

        public int? InChargeUserID { get; set; }

        public int? MorningInChargeUserID { get; set; }

        public int? NoonInChargeUserID { get; set; }

        public int? AfternoonInChargeUserID { get; set; }

        public int? DawnInChargeUserID { get; set; }

        public virtual User User { get; set; }

        public virtual Week Week { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FramePlan> FramePlan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MailingHistory> MailingHistory { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Schedule> Schedule { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleTemplate> ScheduleTemplate { get; set; }
    }
}
