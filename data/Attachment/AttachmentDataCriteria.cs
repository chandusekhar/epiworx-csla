using System;
using System.ComponentModel;

namespace Epiworx.Data
{
    [Serializable]
    public class AttachmentDataCriteria : Csla.CriteriaBase<AttachmentDataCriteria>, IDataCriteria
    {
        public int? AttachmentId { get; set; }
        public string FileType { get; set; }
        public bool? IsArchived { get; set; }
        public string Name { get; set; }
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

        public AttachmentDataCriteria()
        {
            this.SortBy = "Name";
            this.SortOrder = ListSortDirection.Ascending;
        }
    }
}
