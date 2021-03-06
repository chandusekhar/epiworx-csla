using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Epiworx.Data;

namespace Epiworx.Business
{
    public partial class FeedInfo
    {
        private void Child_Fetch(FeedData data)
        {
            this.FeedId = data.FeedId;
            this.Action = data.Action;
            this.Description = data.Description;
            this.SourceId = data.SourceId;
            this.SourceName = data.Source.Name;
            this.SourceTypeId = data.SourceTypeId;
            this.CreatedBy = data.CreatedBy;
            this.CreatedByEmail = data.CreatedByUser.Email;
            this.CreatedByName = data.CreatedByUser.Name;
            this.CreatedDate = data.CreatedDate;

            this.Sources = new List<FeedSourceInfo>();

            foreach (var source in data.Sources)
            {
                this.Sources.Add(Csla.DataPortal.FetchChild<FeedSourceInfo>(source));
            }
        }
    }
}
