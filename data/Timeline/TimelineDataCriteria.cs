using System;
using System.ComponentModel;

namespace Epiworx.Data
{
    [Serializable]
    public class TimelineDataCriteria : Csla.CriteriaBase<TimelineDataCriteria>, IDataCriteria
    {
        public int? TimelineId { get; set; }
        public string Body { get; set; }
        public bool? IsArchived { get; set; }
        public int[] SourceId { get; set; }
        public int? SourceTypeId { get; set; }
        public int? CreatedBy { get; set; }
        public DateRangeCriteria CreatedDate { get; set; }
        public int? ModifiedBy { get; set; }
        public DateRangeCriteria ModifiedDate { get; set; }
        public string Text { get; set; }
        public int? SkipRecords { get; set; }
        public int? MaximumRecords { get; set; }
        public string SortBy { get; set; }
        public ListSortDirection SortOrder { get; set; }

        public TimelineDataCriteria()
        {
            this.SortBy = "Body";
            this.SortOrder = ListSortDirection.Ascending;
        }
    }
}
