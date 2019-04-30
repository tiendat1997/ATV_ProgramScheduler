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
using System.Linq;

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
            for (int i = 0; i < schedules.Count; i++)
            {



                int currentRow = 0;

                //Create sheet
                ISheet currentSheet = null;
                string date = "";
                if (schedules[i].DayOfWeek < 7)
                {
                    currentSheet = workbook.CreateSheet("Thứ " + (schedules[i].DayOfWeek + 1));
                    date = "Thứ " + (schedules[i].DayOfWeek + 1) + ": " + schedules[i].Date.DateOfYear.ToString("dd/MM/yyyy");
                }
                else if (schedules[i].DayOfWeek == 7)
                {
                    currentSheet = workbook.CreateSheet("Chủ Nhật");
                    date = "Chủ Nhật" + ": " + schedules[i].Date.DateOfYear.ToString("dd/MM/yyyy");

                }

                //add page break and setup print
                currentSheet.Autobreaks = false;
                IPrintSetup ps = currentSheet.PrintSetup;
                ps.Landscape = true;
                ps.PaperSize = (short)PaperSize.A4;
                ps.FitWidth = 1;
                ps.FitHeight = 0;

                //get cell style
                ICellStyle cellStyle = GenerateCellContentStyle(workbook);
                //add data
                var scheduleDetail = schedules[i].Details;

                var morningList = scheduleDetail.Where(x => x.StartTime >= TimeFrame.Morning.StartTime && x.StartTime <= TimeFrame.Morning.EndTime).OrderBy(x => x.StartTime);
                var noonList = scheduleDetail.Where(x => x.StartTime >= TimeFrame.Noon.StartTime && x.StartTime <= TimeFrame.Noon.EndTime).OrderBy(x => x.StartTime);
                var afternoonList = scheduleDetail.Where(x => x.StartTime >= TimeFrame.AfternoonAndEvening.StartTime && x.StartTime <= TimeFrame.AfternoonAndEvening.EndTime).OrderBy(x => x.StartTime);
                var dawn = scheduleDetail.Where(x => x.StartTime >= TimeFrame.Dawn.StartTime && x.StartTime <= TimeFrame.Dawn.EndTime).OrderBy(x => x.StartTime);

                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH SÁNG", date, ref currentRow);
                foreach (var item in morningList)
                {
                    GenerateScheduleRow(currentSheet, cellStyle, currentRow, item);
                    currentRow++;
                }
                GenerateFooter(ref currentRow, currentSheet);
                currentSheet.SetRowBreak(currentRow);
                InsertEmptyRow(ref currentRow, 2);


                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH TRƯA", date, ref currentRow);
                foreach (var item in noonList)
                {
                    GenerateScheduleRow(currentSheet, cellStyle, currentRow, item);
                    currentRow++;
                }
                GenerateFooter(ref currentRow, currentSheet);
                currentSheet.SetRowBreak(currentRow);
                InsertEmptyRow(ref currentRow, 2);

                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH CHIỀU VÀ TỐI", date, ref currentRow);
                foreach (var item in afternoonList)
                {
                    GenerateScheduleRow(currentSheet, cellStyle, currentRow, item);
                    currentRow++;
                }
                GenerateFooter(ref currentRow, currentSheet);
                currentSheet.SetRowBreak(currentRow);
                InsertEmptyRow(ref currentRow, 2);

                GenerateScheduleHeader(workbook, currentSheet, "CHƯƠNG TRÌNH TRUYỀN HÌNH RẠNG SÁNG", date, ref currentRow);
                foreach (var item in dawn)
                {
                    GenerateScheduleRow(currentSheet, cellStyle, currentRow, item);
                    currentRow++;
                }
                GenerateFooter(ref currentRow, currentSheet);
                currentSheet.SetRowBreak(currentRow);
                InsertEmptyRow(ref currentRow, 2);

                //AutoWidthColumn(currentSheet, 6);
                FixedWidthColumn(currentSheet);

              
               
            }

            return workbook;
        }

        private static void GenerateFooter(ref int currentRow, ISheet sheet)
        {
            MergeCell(sheet, currentRow, 0, currentRow, 5);
            ICell footerCell = sheet.CreateRow(currentRow).CreateCell(0);
            footerCell.SetCellValue("Ban Biên Tập                          Phòng Chương Trình                          Phòng KT-CN                               Kiểm tra lịch");
            currentRow++;
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

        private static void GenerateScheduleHeader(IWorkbook workbook, ISheet currentSheet, string label, string date, ref int row)
        {
            #region first row
            MergeCell(currentSheet, row, 0, row, 5);
            ICell labelCell = currentSheet.CreateRow(row).CreateCell(0);
            labelCell.SetCellValue($"{label}                       {date} ");
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
            cellStyle.BorderLeft = BorderStyle.Medium;
            cellStyle.BorderTop = BorderStyle.Medium;
            cellStyle.BorderRight = BorderStyle.Medium;
            cellStyle.BorderBottom = BorderStyle.Medium;
            cellStyle.Alignment = HorizontalAlignment.Center;
            cellStyle.VerticalAlignment = VerticalAlignment.Center;

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

        private static void FixedWidthColumn(ISheet sheet)
        {
            sheet.SetColumnWidth(0, 2500);
            sheet.SetColumnWidth(1, 12000);
            sheet.SetColumnWidth(2, 18000);
            sheet.SetColumnWidth(3, 4000);
            sheet.SetColumnWidth(4, 2500);
            sheet.SetColumnWidth(5, 6000);
        }

        private static ICellStyle GenerateCellContentStyle(IWorkbook workbook)
        {
            ICellStyle cellstyle = workbook.CreateCellStyle();
            cellstyle.WrapText = true;
            cellstyle.VerticalAlignment = VerticalAlignment.Center;
            cellstyle.Alignment = HorizontalAlignment.Center;
            cellstyle.BorderLeft = BorderStyle.Medium;
            cellstyle.BorderTop = BorderStyle.Medium;
            cellstyle.BorderRight = BorderStyle.Medium;
            cellstyle.BorderBottom = BorderStyle.Medium;
            return cellstyle;
        }

        private static void GenerateScheduleRow(ISheet sheet, ICellStyle cellStyle, int rowIndex, ScheduleDetailViewModel schedule)
        {
            IRow currentRow = sheet.CreateRow(rowIndex);
            ICell cell;

            int col = 0;
            cell = currentRow.CreateCell(col);
            cell.CellStyle = cellStyle;
            cell.SetCellValue(schedule.StartTime.ToString());

            col++;
            if (schedule.IsNoted)
            {
                cell = currentRow.CreateCell(col);
                cell.CellStyle = cellStyle;
                cell.SetCellValue("* " + schedule.ProgramName);
            }
            else
            {
                cell = currentRow.CreateCell(col);
                cell.CellStyle = cellStyle;
                cell.SetCellValue(schedule.ProgramName);
            }

            col++;
            cell = currentRow.CreateCell(col);
            cell.CellStyle = cellStyle;
            cell.SetCellValue(schedule.Contents);

            col++;
            cell = currentRow.CreateCell(col);
            cell.CellStyle = cellStyle;
            cell.SetCellValue(schedule.PerformBy);

            col++;
            cell = currentRow.CreateCell(col);
            cell.CellStyle = cellStyle;
            cell.SetCellValue(schedule.Duration + "");

            col++;
            cell = currentRow.CreateCell(col);
            cell.CellStyle = cellStyle;
            cell.SetCellValue(schedule.Note);

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
