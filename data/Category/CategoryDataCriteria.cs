using System;
using System.ComponentModel;

namespace Epiworx.Data
{
    [Serializable]
    public class CategoryDataCriteria : Csla.CriteriaBase<CategoryDataCriteria>, IDataCriteria
    {
		public int? CategoryId { get; set; }
		public string Description { get; set; }
		public bool? IsActive { get; set; }
		public bool? IsArchived { get; set; }
		public string Name { get; set; }
		public int? Ordinal { get; set; }
		public int? CreatedBy { get; set; }
		public DateRangeCriteria CreatedDate { get; set; }
		public int? ModifiedBy { get; set; }
		public DateRangeCriteria ModifiedDate { get; set; }
        public string Text { get; set; }
        public int? SkipRecords { get; set; }
        public int? MaximumRecords { get; set; }
        public string SortBy { get; set; }
        public ListSortDirection SortOrder { get; set; }

        public CategoryDataCriteria()
        {
            this.SortBy = "Name";
            this.SortOrder = ListSortDirection.Ascending;
        }
    }
}
