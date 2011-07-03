using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Epiworx.Business
{
    public partial class StoryInfo
    {
        private static Csla.PropertyInfo<int> StoryIdProperty =
            RegisterProperty<int>(row => row.StoryId, "StoryId");
        public int StoryId
        {
            get { return this.GetProperty(StoryIdProperty); }
            set { this.LoadProperty(StoryIdProperty, value); }
        }

        private static Csla.PropertyInfo<int> AssignedToProperty =
            RegisterProperty<int>(row => row.AssignedTo, "AssignedTo");
        public int AssignedTo
        {
            get { return this.GetProperty(AssignedToProperty); }
            set { this.LoadProperty(AssignedToProperty, value); }
        }

        private static Csla.PropertyInfo<string> AssignedToNameProperty =
            RegisterProperty<string>(row => row.AssignedToName, "AssignedToName");
        public string AssignedToName
        {
            get { return this.GetProperty(AssignedToNameProperty); }
            set { this.LoadProperty(AssignedToNameProperty, value); }
        }

        private static Csla.PropertyInfo<DateTime> AssignedDateProperty =
            RegisterProperty<DateTime>(row => row.AssignedDate, "AssignedDate");
        public DateTime AssignedDate
        {
            get { return this.GetProperty(AssignedDateProperty); }
            set { this.LoadProperty(AssignedDateProperty, value); }
        }

        private static Csla.PropertyInfo<DateTime> CompletedDateProperty =
            RegisterProperty<DateTime>(row => row.CompletedDate, "CompletedDate");
        public DateTime CompletedDate
        {
            get { return this.GetProperty(CompletedDateProperty); }
            set { this.LoadProperty(CompletedDateProperty, value); }
        }

        private static Csla.PropertyInfo<string> DescriptionProperty =
            RegisterProperty<string>(row => row.Description, "Description");
        public string Description
        {
            get { return this.GetProperty(DescriptionProperty); }
            set { this.LoadProperty(DescriptionProperty, value); }
        }

        private static Csla.PropertyInfo<decimal> DurationProperty =
            RegisterProperty<decimal>(row => row.Duration, "Duration");
        public decimal Duration
        {
            get { return this.GetProperty(DurationProperty); }
            set { this.LoadProperty(DurationProperty, value); }
        }

        private static Csla.PropertyInfo<DateTime> EstimatedCompletedDateProperty =
            RegisterProperty<DateTime>(row => row.EstimatedCompletedDate, "EstimatedCompletedDate");
        public DateTime EstimatedCompletedDate
        {
            get { return this.GetProperty(EstimatedCompletedDateProperty); }
            set { this.LoadProperty(EstimatedCompletedDateProperty, value); }
        }

        private static Csla.PropertyInfo<decimal> EstimatedDurationProperty =
            RegisterProperty<decimal>(row => row.EstimatedDuration, "EstimatedDuration");
        public decimal EstimatedDuration
        {
            get { return this.GetProperty(EstimatedDurationProperty); }
            set { this.LoadProperty(EstimatedDurationProperty, value); }
        }

        private static Csla.PropertyInfo<bool> IsArchivedProperty =
            RegisterProperty<bool>(row => row.IsArchived, "IsArchived");
        public bool IsArchived
        {
            get { return this.GetProperty(IsArchivedProperty); }
            set { this.LoadProperty(IsArchivedProperty, value); }
        }

        private static Csla.PropertyInfo<bool> IsCompletedProperty =
            RegisterProperty<bool>(row => row.IsCompleted, "IsCompleted");
        public bool IsCompleted
        {
            get { return this.GetProperty(IsCompletedProperty); }
            set { this.LoadProperty(IsCompletedProperty, value); }
        }

        private static Csla.PropertyInfo<bool> IsOpenedProperty =
            RegisterProperty<bool>(row => row.IsOpened, "IsOpened");
        public bool IsOpened
        {
            get { return this.GetProperty(IsOpenedProperty); }
            set { this.LoadProperty(IsOpenedProperty, value); }
        }

        private static Csla.PropertyInfo<int> ProjectIdProperty =
            RegisterProperty<int>(row => row.ProjectId, "ProjectId");
        public int ProjectId
        {
            get { return this.GetProperty(ProjectIdProperty); }
            set { this.LoadProperty(ProjectIdProperty, value); }
        }

        private static Csla.PropertyInfo<string> ProjectNameProperty =
            RegisterProperty<string>(row => row.ProjectName, "ProjectName");
        public string ProjectName
        {
            get { return this.GetProperty(ProjectNameProperty); }
            set { this.LoadProperty(ProjectNameProperty, value); }
        }

        private static Csla.PropertyInfo<int> SprintIdProperty =
            RegisterProperty<int>(row => row.SprintId, "SprintId");
        public int SprintId
        {
            get { return this.GetProperty(SprintIdProperty); }
            set { this.LoadProperty(SprintIdProperty, value); }
        }

        private static Csla.PropertyInfo<string> SprintNameProperty =
            RegisterProperty<string>(row => row.SprintName, "SprintName");
        public string SprintName
        {
            get { return this.GetProperty(SprintNameProperty); }
            set { this.LoadProperty(SprintNameProperty, value); }
        }

        private static Csla.PropertyInfo<DateTime> StartDateProperty =
            RegisterProperty<DateTime>(row => row.StartDate, "StartDate");
        public DateTime StartDate
        {
            get { return this.GetProperty(StartDateProperty); }
            set { this.LoadProperty(StartDateProperty, value); }
        }

        private static Csla.PropertyInfo<int> StatusIdProperty =
            RegisterProperty<int>(row => row.StatusId, "StatusId");
        public int StatusId
        {
            get { return this.GetProperty(StatusIdProperty); }
            set { this.LoadProperty(StatusIdProperty, value); }
        }

        private static Csla.PropertyInfo<string> StatusNameProperty =
            RegisterProperty<string>(row => row.StatusName, "StatusName");
        public string StatusName
        {
            get { return this.GetProperty(StatusNameProperty); }
            set { this.LoadProperty(StatusNameProperty, value); }
        }

        private static Csla.PropertyInfo<int> ModifiedByProperty =
            RegisterProperty<int>(row => row.ModifiedBy, "ModifiedBy");
        public int ModifiedBy
        {
            get { return this.GetProperty(ModifiedByProperty); }
            set { this.LoadProperty(ModifiedByProperty, value); }
        }

        private static Csla.PropertyInfo<string> ModifiedByNameProperty =
            RegisterProperty<string>(row => row.ModifiedByName, "ModifiedByName");
        public string ModifiedByName
        {
            get { return this.GetProperty(ModifiedByNameProperty); }
            set { this.LoadProperty(ModifiedByNameProperty, value); }
        }

        private static Csla.PropertyInfo<DateTime> ModifiedDateProperty =
            RegisterProperty<DateTime>(row => row.ModifiedDate, "ModifiedDate");
        public DateTime ModifiedDate
        {
            get { return this.GetProperty(ModifiedDateProperty); }
            set { this.LoadProperty(ModifiedDateProperty, value); }
        }

        private static Csla.PropertyInfo<int> CreatedByProperty =
            RegisterProperty<int>(row => row.CreatedBy, "CreatedBy");
        public int CreatedBy
        {
            get { return this.GetProperty(CreatedByProperty); }
            set { this.LoadProperty(CreatedByProperty, value); }
        }

        private static Csla.PropertyInfo<string> CreatedByNameProperty =
            RegisterProperty<string>(row => row.CreatedByName, "CreatedByName");
        public string CreatedByName
        {
            get { return this.GetProperty(CreatedByNameProperty); }
            set { this.LoadProperty(CreatedByNameProperty, value); }
        }

        private static Csla.PropertyInfo<DateTime> CreatedDateProperty =
            RegisterProperty<DateTime>(row => row.CreatedDate, "CreatedDate");
        public DateTime CreatedDate
        {
            get { return this.GetProperty(CreatedDateProperty); }
            set { this.LoadProperty(CreatedDateProperty, value); }
        }
    }
}
