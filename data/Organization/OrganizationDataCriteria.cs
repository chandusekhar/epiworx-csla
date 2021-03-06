using System;
using System.ComponentModel;

namespace Epiworx.Data
{
    [Serializable]
    public class OrganizationDataCriteria : Csla.CriteriaBase<OrganizationDataCriteria>, IDataCriteria
    {
        public int? OrganizationId { get; set; }
        public int? UserId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool? IsActive { get; set; }
        public bool? IsArchived { get; set; }
        public int? ModifiedBy { get; set; }
        public DateRangeCriteria ModifiedDate { get; set; }
        public int? CreatedBy { get; set; }
        public DateRangeCriteria CreatedDate { get; set; }
        public string Text { get; set; }
        public int? SkipRecords { get; set; }
        public int? MaximumRecords { get; set; }
        public string SortBy { get; set; }
        public ListSortDirection SortOrder { get; set; }

        public OrganizationDataCriteria()
        {
            this.SortBy = "Name";
            this.SortOrder = ListSortDirection.Ascending;
        }
    }
}
