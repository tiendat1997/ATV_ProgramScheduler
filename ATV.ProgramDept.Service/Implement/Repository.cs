using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class Repository<T> : IRepository<T> where T: class
    {
        protected readonly ATVContext _context;
        protected readonly DbSet<T> dbSet;
        public Repository()
        {
            _context = new ATVContext();
            dbSet = _context.Set<T>(); 
        }

        public int Count(Func<T, bool> predicate)
        {
            return _context.Set<T>().Where(predicate).Count();
        }

        public void Create(T entity)
        {            
            dbSet.Add(entity);
        }

        public void Delete(T entity)
        {            
            dbSet.Remove(entity);
        }

        public IEnumerable<T> Find(Func<T, bool> predicate)
        {
            return _context.Set<T>().Where(predicate);
        }

        public T FindById(int id)
        {
            return _context.Set<T>().Find(id);
        }

        public IEnumerable<T> GetAll()
        {
            return _context.Set<T>();
        }

        public void Update(T entity)
        {
            _context.Entry(entity).State = EntityState.Modified;
        }

        public void Save()
        {
            _context.SaveChanges();
        }
        public void Dispose()
        {
            if (_context != null)
            {
                _context.Dispose();
            }
            GC.SuppressFinalize(this);
        }
    }
}
