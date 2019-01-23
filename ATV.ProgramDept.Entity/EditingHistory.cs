namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EditingHistory")]
    public partial class EditingHistory
    {
        public int ID { get; set; }

        public int UserID { get; set; }

        public int DateID { get; set; }

        public DateTime Time { get; set; }

        public bool IsFinished { get; set; }

        public virtual Date Date { get; set; }

        public virtual User User { get; set; }
    }
}
