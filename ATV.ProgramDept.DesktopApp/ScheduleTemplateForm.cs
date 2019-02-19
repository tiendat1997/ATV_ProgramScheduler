using ATV.ProgramDept.Service.Constant;
using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ATV.ProgramDept.DesktopApp
{
    public partial class ScheduleTemplateForm : Form
    {
        public int DayOfWeek { get; set; }
        public ScheduleTemplateForm(int dayOfWeek)
        {
            InitializeComponent();
            DayOfWeek = dayOfWeek;
            SetTitleDayOfWeek();
            InitSampleDataForDataGridView();
        }
        private void InitSampleDataForDataGridView()
        {
            var list = new List<ScheduleTemplateDetailViewModel>
            {
                new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                   new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                      new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                         new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                            new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                               new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                  new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                     new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                        new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                           new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                              new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                 new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,

                },
                                                    new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                       new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                          new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                             new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                   new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                      new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                         new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                            new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                               new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                  new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                     new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                        new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                           new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                              new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                                 new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                                    new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                                       new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                                          new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                                             new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },
                                                                                                                new ScheduleTemplateDetailViewModel
                {
                    StartTime = new TimeSpan(5,0,0),
                    ProgramName = "Chương trình tập thể dục",
                    Contents = "Something vui và funny",
                    Duration = 30,
                    PerformBy = "P.Phát Thanh",
                    Note = "something",
                    Position = 1,
                },

            };
            var bindList = new BindingList<ScheduleTemplateDetailViewModel>(list);
            var bindSource = new BindingSource(bindList, null);
            dgvScheduleTemplateDetail.DataSource = bindSource;
        }

        private void ScheduleTemplateForm_Resize(object sender, EventArgs e)
        {
            pnlHeader.Width = flpScheduleTemplate.Width;

            dgvScheduleTemplateDetail.Width = flpScheduleTemplate.Width;
            dgvScheduleTemplateDetail.Height = flpScheduleTemplate.Height;
        }

        private void SetTitleDayOfWeek()
        {
            switch (DayOfWeek)
            {
                case (byte)DayOfWeekEnum.Mon:
                    lblTitle.Text = "Thứ 2";
                    break;
                case (byte)DayOfWeekEnum.Tue:
                    lblTitle.Text = "Thứ 3";
                    break;
                case (byte)DayOfWeekEnum.Wed:
                    lblTitle.Text = "Thứ 4";
                    break;
                case (byte)DayOfWeekEnum.Thur:
                    lblTitle.Text = "Thứ 5";
                    break;
                case (byte)DayOfWeekEnum.Fri:
                    lblTitle.Text = "Thứ 6";
                    break;
                case (byte)DayOfWeekEnum.Sat:
                    lblTitle.Text = "Thứ 7";
                    break;
                case (byte)DayOfWeekEnum.Sun:
                    lblTitle.Text = "Chủ nhật ";
                    break;
                default:
                    break;
            }
        }

        private void ScheduleTemplateForm_Load(object sender, EventArgs e)
        {
            dgvScheduleTemplateDetail.AutoGenerateColumns = false;
        }

        private void dgvScheduleTemplateDetail_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.ColumnIndex == 1 && e.Value != null) // StartTime Columns 
            {
                var time = (TimeSpan)e.Value;
                if (TimeFrame.Morning.StartTime <= time && time <= TimeFrame.Morning.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Sáng";
                }
                if (TimeFrame.Noon.StartTime <= time && time <= TimeFrame.Noon.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Trưa";
                }
                if (TimeFrame.AfternoonAndEvening.StartTime <= time && time <= TimeFrame.AfternoonAndEvening.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Chiều tối";
                }
                if (TimeFrame.Dawn.StartTime <= time && time <= TimeFrame.Dawn.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Rạng";
                }
            }

            if (e.ColumnIndex == 0)
            {
                if (e.RowIndex == 0)
                {
                    return;
                }

                if (IsTheSameCellValue(e.ColumnIndex, e.RowIndex))
                {
                    e.Value = "";
                    e.FormattingApplied = true;
                }
            }
        }

        private bool IsTheSameCellValue(int column, int row)
        {
            DataGridViewCell cell1 = dgvScheduleTemplateDetail[column, row];
            DataGridViewCell cell2 = dgvScheduleTemplateDetail[column, row - 1];
            if (cell1.Value == null || cell2.Value == null)
            {
                return false;
            }
            return cell1.Value.ToString() == cell2.Value.ToString();
        }
    }
}
