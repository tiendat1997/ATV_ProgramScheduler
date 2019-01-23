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

        public virtual DbSet<Date> Dates { get; set; }
        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<EditingHistory> EditingHistories { get; set; }
        public virtual DbSet<MailingHistory> MailingHistories { get; set; }
        public virtual DbSet<Program> Programs { get; set; }
        public virtual DbSet<ProgramType> ProgramTypes { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Schedule> Schedules { get; set; }
        public virtual DbSet<ScheduleTemplate> ScheduleTemplates { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Week> Weeks { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Date>()
                .HasMany(e => e.EditingHistories)
                .WithRequired(e => e.Date)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Date>()
                .HasMany(e => e.MailingHistories)
                .WithRequired(e => e.Date)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Date>()
                .HasMany(e => e.Schedules)
                .WithRequired(e => e.Date)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Date>()
                .HasMany(e => e.ScheduleTemplates)
                .WithRequired(e => e.Date)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Department>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Department>()
                .HasMany(e => e.MailingHistories)
                .WithRequired(e => e.Department)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Program>()
                .HasMany(e => e.Schedules)
                .WithRequired(e => e.Program)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Program>()
                .HasMany(e => e.ScheduleTemplates)
                .WithRequired(e => e.Program)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ProgramType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ProgramType>()
                .HasMany(e => e.Programs)
                .WithRequired(e => e.ProgramType)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Role>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Role>()
                .HasMany(e => e.Users)
                .WithRequired(e => e.Role)
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
                .IsFixedLength();

            modelBuilder.Entity<User>()
                .Property(e => e.DefaultPassword)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.EditingHistories)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<User>()
                .HasMany(e => e.MailingHistories)
                .WithRequired(e => e.User)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Week>()
                .HasMany(e => e.Dates)
                .WithRequired(e => e.Week)
                .WillCascadeOnDelete(false);
        }
    }
}
