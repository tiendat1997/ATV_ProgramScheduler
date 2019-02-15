namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ScheduleTemplate")]
    public partial class ScheduleTemplate
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ScheduleTemplate()
        {
            ScheduleTemplateDetail = new HashSet<ScheduleTemplateDetail>();
        }

        public int ID { get; set; }

        public string CreatedBy { get; set; }

        public int? DateID { get; set; }

        public bool? IsActive { get; set; }

        public short? DayOfWeek { get; set; }

        public virtual Date Date { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ScheduleTemplateDetail> ScheduleTemplateDetail { get; set; }
    }
}
