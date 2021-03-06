﻿using ATV.ProgramDept.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IRepository<T> where T : class
    {
        IEnumerable<T> GetAll();
        IEnumerable<T> FindAsNoTracking(Expression<Func<T, bool>> predicate);
        IEnumerable<T> Find(Expression<Func<T, bool>> predicate);
        T FindById(int id);
        void Create(T entity);
        void Update(T entity);
        void Delete(T entity);
        int Count(Func<T, bool> predicate);
        void Save();
        void Dispose();
    }
}
