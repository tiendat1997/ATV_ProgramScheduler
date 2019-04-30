﻿using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Utilities
{
    public static class StaticLogger
    {
        public static void LogInfo(Type declaringType, string text)
        {
            LogManager.GetLogger(declaringType.FullName).Info(text);
        }
        public static void LogWarn(Type declaringType, string text)
        {
            LogManager.GetLogger(declaringType.FullName).Warn(text);
        }
        public static void LogDebug(Type declaringType, string text)
        {
            LogManager.GetLogger(declaringType.FullName).Debug(text);
        }
        public static void LogTrace(Type declaringType, string text)
        {
            LogManager.GetLogger(declaringType.FullName).Trace(text);
        }
        public static void LogError(Type declaringType, string text)
        {
            LogManager.GetLogger(declaringType.FullName).Error(text);
        }
        public static void LogFatal(Type declaringType, string text)
        {
            LogManager.GetLogger(declaringType.FullName).Fatal(text);
        }
    }
}
