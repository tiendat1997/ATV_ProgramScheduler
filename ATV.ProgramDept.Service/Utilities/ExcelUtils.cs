using ATV.ProgramDept.Service.Constant;
using ATV.ProgramDept.Service.Enum;
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
            CreateListSheet(workbook, new string[] { "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7", "CN" });
            int numberOfSheet = workbook.NumberOfSheets;
            for (int i = 0; i < schedules.Count; i++)
            {
                int currentRow = 0;
                ISheet currentSheet = workbook.GetSheetAt(schedules[i].DateID - 1);
                int currentIndex = 0;
                var scheduleDetail = schedules[i].Details;

                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH SÁNG", ref currentRow);
                while (currentIndex < scheduleDetail.Count
                    && scheduleDetail[currentIndex].StartTime >= TimeFrame.Morning.StartTime
                    && scheduleDetail[currentIndex].StartTime <= TimeFrame.Morning.EndTime)
                {
                    GenerateScheduleRow(currentSheet, currentRow, scheduleDetail[currentIndex]);
                    currentIndex++;
                    currentRow++;
                }
                InsertEmptyRow(ref currentRow, 2);

                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH TRƯA", ref currentRow);
                while (currentIndex < scheduleDetail.Count
                    && scheduleDetail[currentIndex].StartTime >= TimeFrame.Noon.StartTime
                    && scheduleDetail[currentIndex].StartTime <= TimeFrame.Noon.EndTime)
                {
                    GenerateScheduleRow(currentSheet, currentRow, scheduleDetail[currentIndex]);
                    currentIndex++;
                    currentRow++;
                }
                InsertEmptyRow(ref currentRow, 2);

                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH CHIỀU VÀ TỐI", ref currentRow);
                while (currentIndex < scheduleDetail.Count
                    && scheduleDetail[currentIndex].StartTime >= TimeFrame.AfternoonAndEvening.StartTime
                    && scheduleDetail[currentIndex].StartTime <= TimeFrame.AfternoonAndEvening.EndTime)
                {
                    GenerateScheduleRow(currentSheet, currentRow, scheduleDetail[currentIndex]);
                    currentIndex++;
                    currentRow++;
                }
                InsertEmptyRow(ref currentRow, 2);

                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH RẠNG SÁNG", ref currentRow);
                while (currentIndex < scheduleDetail.Count
                    && scheduleDetail[currentIndex].StartTime >= TimeFrame.Dawn.StartTime
                    && scheduleDetail[currentIndex].StartTime <= TimeFrame.Dawn.EndTime)
                {
                    GenerateScheduleRow(currentSheet, currentRow, scheduleDetail[currentIndex]);
                    currentIndex++;
                    currentRow++;
                }
                InsertEmptyRow(ref currentRow, 2);

                AutoWidthColumn(currentSheet, 6);
            }

            return workbook;
        }

        private static void InsertEmptyRow(ref int currentRow, int totalRow)
        {
            currentRow = currentRow + totalRow;
        }

        private static IFont GetTitleFont(IWorkbook workbook)
        {
            IFont font = workbook.CreateFont();
            font.IsBold = true;
            font.FontHeightInPoints = 12;

            return font;
        }

        private static IFont GetHeaderFont(IWorkbook workbook)
        {
            IFont font = workbook.CreateFont();
            font.IsItalic = true;
            font.FontHeightInPoints = 10;
            return font;
        }

        private static void GenerateScheduleHeader(IWorkbook workbook, ISheet currentSheet, string label, ref int row)
        {
            #region first row
            MergeCell(currentSheet, row, 0, row, 5);
            ICell labelCell = currentSheet.CreateRow(row).CreateCell(0);
            labelCell.SetCellValue($"{label}                       {currentSheet.SheetName}: ");
            ICellStyle labelCellStyle = workbook.CreateCellStyle();
            labelCellStyle.SetFont(GetTitleFont(workbook));
            labelCell.CellStyle = labelCellStyle;
            #endregion

            #region table head
            //content
            row++;
            IRow titleRow = currentSheet.CreateRow(row);
            ICell cell = null;
            ICellStyle cellStyle = workbook.CreateCellStyle();
            cellStyle.SetFont(GetHeaderFont(workbook));

            int col = 0;
            cell = titleRow.CreateCell(col);
            cell.SetCellValue("Giờ");
            cell.CellStyle = cellStyle;

            col++;
            cell = titleRow.CreateCell(col);
            cell.SetCellValue("Tiết mục");
            cell.CellStyle = cellStyle;

            col++;
            cell = titleRow.CreateCell(col);
            cell.SetCellValue("Nội dung");
            cell.CellStyle = cellStyle;

            col++;
            cell = titleRow.CreateCell(col);
            cell.SetCellValue("Thực hiện");
            cell.CellStyle = cellStyle;

            col++;
            cell = titleRow.CreateCell(col);
            cell.SetCellValue("Th.lượng");
            cell.CellStyle = cellStyle;

            col++;
            cell = titleRow.CreateCell(col);
            cell.SetCellValue("Ghi chú");
            cell.CellStyle = cellStyle;

            #endregion

            row++;
        }

        private static void AutoWidthColumn(ISheet sheet, int totalCollumns)
        {
            for (int i = 0; i < totalCollumns; i++)
            {
                sheet.AutoSizeColumn(i);
            }
        }

        private static void GenerateScheduleRow(ISheet sheet, int rowIndex, ScheduleDetailViewModel schedule)
        {
            IRow currentRow = sheet.CreateRow(rowIndex);

            int col = 0;
            currentRow.CreateCell(col).SetCellValue(schedule.StartTime.ToString());

            col++;
            currentRow.CreateCell(col).SetCellValue(schedule.ProgramName);

            col++;
            currentRow.CreateCell(col).SetCellValue(schedule.Contents);

            col++;
            currentRow.CreateCell(col).SetCellValue(schedule.PerformBy);

            col++;
            currentRow.CreateCell(col).SetCellValue(schedule.Duration + "");

            col++;
            currentRow.CreateCell(col).SetCellValue(schedule.Note);

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
                ((HSSFWorkbook)workbook).DocumentSummaryInformation = dsi;

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
