using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.ViewModel;
using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Utilities
{
    public class ExcelUtils
    {
        public static byte[] getSample()
        {
            using (ExcelPackage ex = new ExcelPackage())
            {
                List<ExcelWorksheet> worksheets = new List<ExcelWorksheet>();
                for (int i = 0; i < 10; i++)
                {
                    worksheets.Add(ex.Workbook.Worksheets.Add("Day " + (i + 1)));
                }

                foreach (ExcelWorksheet sheet in worksheets)
                {
                    for (int row = 1; row < 200; row++)
                    {
                        for (int col = 1; col < 20; col++)
                        {
                            sheet.Cells[row, col].Value = "ngoc";
                        }
                    }
                }

                return ex.GetAsByteArray();
            }
            return null;
        }

        public static byte[] exportSchedule(List<ScheduleViewModel> schedules)
        {
            using (ExcelPackage ex = new ExcelPackage())
            {
                List<ExcelWorksheet> worksheets = new List<ExcelWorksheet>();
                for (int i = 0; i < 7; i++)
                {
                    if(i == 6)
                    {
                        worksheets.Add(ex.Workbook.Worksheets.Add("Lich CN"));
                    }
                    else
                    {
                        worksheets.Add(ex.Workbook.Worksheets.Add("Lich T" + (i + 2)));
                    }
                }

                foreach (ExcelWorksheet sheet in worksheets)
                {
                    #region first row
                    sheet.Cells[1, 1, 1, 6].Merge = true;
                    sheet.Cells[1, 1].Value = "CHƯƠNG TRÌNH TRUYỀN HÌNH SÁNG                       Thứ Bảy: 20/10/2018";
                    sheet.Cells[1, 1].Style.Font.Size = 18;
                    #endregion
                    #region table head
                    //content
                    sheet.Cells[2, 1].Value = "Giờ";
                    sheet.Cells[2, 2].Value = "Tiết mục";
                    sheet.Cells[2, 3].Value = "Nội dung";
                    sheet.Cells[2, 4].Value = "Mã số";
                    sheet.Cells[2, 5].Value = "Th.lượng";
                    sheet.Cells[2, 6].Value = "Ghi chú";
                    //style header
                    for (int i = 1; i <= 6; i++)
                    {
                        sheet.Cells[2, i].Style.Font.Italic = true;
                        sheet.Cells[2, i].Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                        sheet.Cells[2, i].Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;
                        sheet.Cells[2, i].Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                        sheet.Cells[2, i].Style.Fill.BackgroundColor.SetColor(Color.LightGreen);
                    }
                    #endregion
                    #region body
                    int currentRow = 3;
                    foreach (var schedule in schedules)
                    {
                        sheet.Cells[currentRow, 1].Value = schedule.StartTime;
                        sheet.Cells[currentRow, 2].Value = schedule.Name;
                        sheet.Cells[currentRow, 3].Value = schedule.Content;
                        sheet.Cells[currentRow, 4].Value = schedule.Code;
                        sheet.Cells[currentRow, 5].Value = schedule.Duration + "";
                        sheet.Cells[currentRow, 6].Value = schedule.Note;

                        //style cell
                        for (int i = 1; i <= 6; i++)
                        {
                            sheet.Cells[currentRow, i].Style.HorizontalAlignment = OfficeOpenXml.Style.ExcelHorizontalAlignment.Center;
                            sheet.Cells[currentRow, i].Style.VerticalAlignment = OfficeOpenXml.Style.ExcelVerticalAlignment.Center;
                        }
                        currentRow++;
                    }

                    #endregion

                    //auto fit collumns, put after fill all of data for sheet
                    sheet.Cells.AutoFitColumns();
                }



                return ex.GetAsByteArray();
            }
            return null;
        }
    }
}
