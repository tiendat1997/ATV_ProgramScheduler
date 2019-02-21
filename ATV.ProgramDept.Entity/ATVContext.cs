namespace ATV.ProgramDept.Entity
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ATVContext : DbContext
    {
        public ATVContext()
            : base("name=ATVContext")
        {
        }

        public virtual DbSet<Date> Date { get; set; }
        public virtual DbSet<Department> Department { get; set; }
        public virtual DbSet<EditingHistory> EditingHistory { get; set; }
        public virtual DbSet<MailingHistory> MailingHistory { get; set; }
        public virtual DbSet<Program> Program { get; set; }
        public virtual DbSet<ProgramType> ProgramType { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<Schedule> Schedule { get; set; }
        public virtual DbSet<ScheduleDetail> ScheduleDetail { get; set; }
        public virtual DbSet<ScheduleTemplate> ScheduleTemplate { get; set; }
        public virtual DbSet<ScheduleTemplateDetail> ScheduleTemplateDetail { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<Week> Week { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //modelBuilder.Entity<Date>()
            //    .HasMany(e => e.EditingHistory)
            //    .WithRequired(e => e.Date)
            //    .WillCascadeOnDelete(false);

            modelBuilder.Entity<Date>()
                .HasMany(e => e.MailingHistory)
                .WithRequired(e => e.Date)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Department>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Department>()
                .HasMany(e => e.MailingHistory)
                .WithRequired(e => e.Department)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Program>()
                .HasMany(e => e.ScheduleDetail)
                .WithRequired(e => e.Program)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Program>()
                .HasMany(e => e.ScheduleTemplateDetail)
                .WithRequired(e => e.Program)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ProgramType>()
                .HasMany(e => e.Program)
                .WithRequired(e => e.ProgramType)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Role>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Role>()
                .HasMany(e => e.User)
                .WithRequired(e => e.Role)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ScheduleTemplate>()
                .HasMany(e => e.ScheduleTemplateDetail)
                .WithRequired(e => e.ScheduleTemplate)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .Property(e => e.IdentityCode)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Phone1)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Phone2)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Username)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.PasswordHash)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.DefaultPassword)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.EditingHistory)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.MailingHistory)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Week>()
                .HasMany(e => e.Date)
                .WithRequired(e => e.Week)
                .WillCascadeOnDelete(false);
            modelBuilder.Entity<Week>()
                .HasMany(e => e.EditingHistory)
                .WithRequired(e => e.Week)
                .WillCascadeOnDelete(false);
        }
    }
}
