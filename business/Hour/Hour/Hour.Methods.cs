using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Epiworx.Business.Helpers;
using Epiworx.Business.Security.Helpers;
using Epiworx.Data;

namespace Epiworx.Business
{
    public partial class Hour
    {
        public override string ToString()
        {
            return string.Format("{0}", this.Date);
        }

        public HourInfo ToHourInfo()
        {
            var result = new HourInfo();

            Csla.Data.DataMapper.Map(this, result);

            return result;
        }

        protected override void PropertyHasChanged(Csla.Core.IPropertyInfo property)
        {
            base.PropertyHasChanged(property);

            switch (property.Name)
            {
                case "StoryId":
                    this.OnStoryIdChanged();
                    break;
                default:
                    break;
            }
        }

        private void OnStoryIdChanged()
        {
            if (this.StoryId == 0)
            {
                this.ProjectId = 0;
                this.ProjectName = string.Empty;
            }
            else
            {
                var story = Story.FetchStory(new StoryDataCriteria { StoryId = this.StoryId });
                this.ProjectId = story.ProjectId;
                this.ProjectName = story.ProjectName;
            }
        }

        internal static Hour NewHour()
        {
            return Csla.DataPortal.Create<Hour>();
        }

        internal static Hour FetchHour(HourDataCriteria criteria)
        {
            return Csla.DataPortal.Fetch<Hour>(criteria);
        }

        internal static Hour FetchHour(HourData data)
        {
            var result = new Hour();

            result.Fetch(data);
            result.MarkOld();

            return result;
        }

        internal static void DeleteHour(HourDataCriteria criteria)
        {
            Csla.DataPortal.Delete<Hour>(criteria);
        }
    }
}
