namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            EditingHistories = new HashSet<EditingHistory>();
            MailingHistories = new HashSet<MailingHistory>();
        }

        public int ID { get; set; }

        [StringLength(200)]
        public string IdentityCode { get; set; }

        public string Name { get; set; }

        [StringLength(50)]
        public string Phone1 { get; set; }

        [StringLength(50)]
        public string Phone2 { get; set; }

        [StringLength(200)]
        public string Email { get; set; }

        [Required]
        [StringLength(200)]
        public string Username { get; set; }

        [Required]
        [StringLength(10)]
        public string PasswordHash { get; set; }

        public bool IsPasswordChanged { get; set; }

        [Required]
        [StringLength(200)]
        public string DefaultPassword { get; set; }

        public int RoleID { get; set; }

        public bool IsActive { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EditingHistory> EditingHistories { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MailingHistory> MailingHistories { get; set; }

        public virtual Role Role { get; set; }
    }
}
