using ATV.ProgramDept.Service.ViewModel;
using NPOI.HPSF;
using NPOI.HSSF.UserModel;
using NPOI.HSSF.Util;
using NPOI.SS.UserModel;
using NPOI.SS.Util;
using NPOI.XSSF.UserModel;
using System.Collections.Generic;

namespace ATV.ProgramDept.Service.Utilities
{
    public class ExcelUtils
    {
        public static readonly byte TYPE_XLS = 1;
        public static readonly byte TYPE_XLSX = 2;

        public static IWorkbook ExportWeeklySchedule(List<ScheduleViewModel> schedules, int type)
        {
            IWorkbook workbook;
            if (type == TYPE_XLS)
            {
                workbook = InitWorkbook(TYPE_XLS);
            }
            else
            {
                workbook = InitWorkbook(TYPE_XLSX);
            }
            CreateListSheet(workbook, new string[] { "Thứ 2", "Thứ 3", "Thứ 4","Thứ 5","Thứ 6","Thứ 7","CN"});
            int numberOfSheet = workbook.NumberOfSheets;
            for (int i = 0; i < numberOfSheet; i++)
            {

                ISheet currentSheet = workbook.GetSheetAt(i);
                #region first row
                MergeCell(currentSheet, 0, 0, 0, 5);
                ICell labelCell = currentSheet.CreateRow(0).CreateCell(0);
                labelCell.SetCellValue($"CHƯƠNG TRÌNH TRUYỀN HÌNH SÁNG                       {currentSheet.SheetName}: ");
                ICellStyle labelCellStyle = workbook.CreateCellStyle();
                labelCellStyle.FillBackgroundColor = HSSFColor.LightGreen.Index;
                labelCell.CellStyle = labelCellStyle;
                #endregion

                #region table head
                //content
                IRow titleRow = currentSheet.CreateRow(1);
                titleRow.CreateCell(0).SetCellValue("Giờ");
                titleRow.CreateCell(1).SetCellValue("Tiết mục");
                titleRow.CreateCell(2).SetCellValue("Nội dung");
                titleRow.CreateCell(3).SetCellValue("Thực hiện");
                titleRow.CreateCell(4).SetCellValue("Th.lượng");
                titleRow.CreateCell(5).SetCellValue("Ghi chú");

                #endregion

                #region body
                int currentRowIndex = 2;
                foreach (var schedule in schedules)
                {
                    IRow currentRow = currentSheet.CreateRow(currentRowIndex);
                    currentRow.CreateCell(0).SetCellValue(schedule.StartTime);
                    currentRow.CreateCell(1).SetCellValue(schedule.Name);
                    currentRow.CreateCell(2).SetCellValue(schedule.Content);
                    currentRow.CreateCell(3).SetCellValue(schedule.Code);
                    currentRow.CreateCell(4).SetCellValue(schedule.Duration + "");
                    currentRow.CreateCell(5).SetCellValue(schedule.Note);

                    //style cell
                   
                    currentRowIndex++;
                }

                #endregion
            }


            return workbook;
        }

        private static void MergeCell(ISheet sheet, int startRow, int startCol, int endRow, int endCol)
        {
            sheet.AddMergedRegion(new CellRangeAddress(startRow, endRow, startCol, endCol));
        }

        private static void CreateListSheet(IWorkbook workbook, string[] sheetNames)
        {
            if (workbook == null || 
                sheetNames == null ||
                sheetNames.Length == 0)
            {
                return;
            }
            foreach (string name in sheetNames)
            {
                workbook.CreateSheet(name);
            }
        }

        private static IWorkbook InitWorkbook(int type, string company = "", string subject = "")
        {
            IWorkbook workbook;

            if (type == TYPE_XLS)
            {
                workbook = new HSSFWorkbook();
                DocumentSummaryInformation dsi = PropertySetFactory.CreateDocumentSummaryInformation();
                dsi.Company = company;
                ((HSSFWorkbook) workbook).DocumentSummaryInformation = dsi;

                SummaryInformation si = PropertySetFactory.CreateSummaryInformation();
                si.Subject = subject;
                ((HSSFWorkbook)workbook).SummaryInformation = si;
            }
            else
            {
                workbook = new XSSFWorkbook();
            }

            return workbook;
        }

    }
}
