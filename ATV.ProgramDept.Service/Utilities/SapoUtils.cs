using ATV.ProgramDept.Service.Constant;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xceed.Words.NET;

namespace ATV.ProgramDept.Service.Utilities
{
    public class SapoUtils
    {
        public static DocX ExportSapo(List<ScheduleViewModel> schedules)
        {
            string title = "CHƯƠNG TRÌNH TRUYỀN HÌNH KÊNH 36" + Environment.NewLine 
                + "Buổi sáng ...";
            //Text  
            string textParagraph = Environment.NewLine;
            for (int i = 0; i < schedules.Count; i++)
            {
                textParagraph += GetDateStringInVietnamese(schedules[i].Date.DayOfWeek, schedules[i].Date.DateOfYear) + Environment.NewLine;
                //add data
                var scheduleDetail = schedules[i].Details;

                var morningList = scheduleDetail.Where(x => x.StartTime >= TimeFrame.Morning.StartTime && x.StartTime <= TimeFrame.Morning.EndTime).OrderBy(x => x.StartTime);
                var noonList = scheduleDetail.Where(x => x.StartTime >= TimeFrame.Noon.StartTime && x.StartTime <= TimeFrame.Noon.EndTime).OrderBy(x => x.StartTime);
                var afternoonList = scheduleDetail.Where(x => x.StartTime >= TimeFrame.AfternoonAndEvening.StartTime && x.StartTime <= TimeFrame.AfternoonAndEvening.EndTime).OrderBy(x => x.StartTime);
                var dawn = scheduleDetail.Where(x => x.StartTime >= TimeFrame.Dawn.StartTime && x.StartTime <= TimeFrame.Dawn.EndTime).OrderBy(x => x.StartTime);

                textParagraph += "SÁNG: " + Environment.NewLine;

                foreach (var item in morningList)
                {
                    textParagraph += GetTimeStringInVietnamese(item.StartTime) + ": " + item.ProgramName 
                        + Environment.NewLine;
                }

                textParagraph += Environment.NewLine;

                textParagraph += "TRƯA: " + Environment.NewLine;

                foreach (var item in noonList)
                {
                    textParagraph += GetTimeStringInVietnamese(item.StartTime) + ": " + item.ProgramName
                        + Environment.NewLine;
                }

                textParagraph += Environment.NewLine;


                textParagraph += "CHIỀU: " + Environment.NewLine;

                foreach (var item in afternoonList)
                {
                    textParagraph += GetTimeStringInVietnamese(item.StartTime) + ": " + item.ProgramName
                        + Environment.NewLine;
                }

                textParagraph += Environment.NewLine;

                textParagraph += "TỐI: " + Environment.NewLine;

                foreach (var item in dawn)
                {
                    textParagraph += GetTimeStringInVietnamese(item.StartTime) + ": " + item.ProgramName
                        + Environment.NewLine;
                }

                textParagraph += Environment.NewLine;

            }

            //Formatting Title  
            Formatting titleFormat = new Formatting();
            //Specify font family  
            titleFormat.FontFamily = new Font("Times New Roman");
            //Specify font size  
            titleFormat.Size = 16;

            //Formatting Text Paragraph  
            Formatting textParagraphFormat = new Formatting();
            //font family  
            textParagraphFormat.FontFamily = new Font("Times New Roman");
            //font size  
            textParagraphFormat.Size = 12;
            //Spaces between characters  
            ////textParagraphFormat.Spacing = 1;
            ///
            var doc = DocX.Create("Sapo.doc");
            //Insert title  
            Paragraph paragraphTitle = doc.InsertParagraph(title, false, titleFormat);
            paragraphTitle.Alignment = Alignment.center;
            //Insert text  
            doc.InsertParagraph(textParagraph, false, textParagraphFormat);
            return doc;
        }

        public static string GetDateStringInVietnamese(int DayOfWeek, DateTime DateOfYear)
        {
            var returnDate = "";
            switch (DayOfWeek)
            {
                case 1:
                    returnDate += "Thứ HAI";
                    break;
                case 2:
                    returnDate += "Thứ BA";
                    break;
                case 3:
                    returnDate += "Thứ TƯ";
                    break;
                case 4:
                    returnDate += "Thứ NĂM";
                    break;
                case 5:
                    returnDate += "Thứ SÁU";
                    break;
                case 6:
                    returnDate += "Thứ BẢY";
                    break;
                case 7:
                    returnDate += "CHỦ NHẬT";
                    break;
            }
            returnDate += ", ngày " + DateOfYear.Day + " tháng " + DateOfYear.Month + " năm " + DateOfYear.Year;
            return returnDate;

        }

        public static string GetTimeStringInVietnamese(TimeSpan time)
        {
            string hour = "";
            string min = "";
            if (time.Hours <= 9)
            {
                hour = "0" + time.Hours;
            }
            else
            {
                hour = time.Hours.ToString();
            }
            if (time.Minutes <= 9)
            {
                min = "0" + time.Minutes;
            }
            else
            {
                min = time.Minutes.ToString();
            }
            string returnTime = hour + "g" + min;
            return returnTime;
        }
    }
}
