namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FramePlan")]
    public partial class FramePlan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FramePlan()
        {
            FramePlanDetail = new HashSet<FramePlanDetail>();
        }

        public int ID { get; set; }

        public int? DateID { get; set; }

        public bool? IsActive { get; set; }

        public virtual Date Date { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FramePlanDetail> FramePlanDetail { get; set; }
    }
}
