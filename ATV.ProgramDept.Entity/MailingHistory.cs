namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MailingHistory")]
    public partial class MailingHistory
    {
        public int ID { get; set; }

        public int DepartmentID { get; set; }

        public int UserID { get; set; }

        public int DateID { get; set; }

        public DateTime Time { get; set; }

        public virtual Date Date { get; set; }

        public virtual Department Department { get; set; }

        public virtual User User { get; set; }
    }
}
