using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Epiworx.Business
{
    public partial class CategoryInfo
    {
        private static Csla.PropertyInfo<int> CategoryIdProperty =
            RegisterProperty<int>(row => row.CategoryId, "CategoryId");
        public int CategoryId
        {
            get { return this.GetProperty(CategoryIdProperty); }
            set { this.LoadProperty(CategoryIdProperty, value); }
        }
            
        private static Csla.PropertyInfo<string> DescriptionProperty =
            RegisterProperty<string>(row => row.Description, "Description");
        public string Description
        {
            get { return this.GetProperty(DescriptionProperty); }
            set { this.LoadProperty(DescriptionProperty, value); }
        }
            
        private static Csla.PropertyInfo<bool> IsActiveProperty =
            RegisterProperty<bool>(row => row.IsActive, "IsActive");
        public bool IsActive
        {
            get { return this.GetProperty(IsActiveProperty); }
            set { this.LoadProperty(IsActiveProperty, value); }
        }
            
        private static Csla.PropertyInfo<bool> IsArchivedProperty =
            RegisterProperty<bool>(row => row.IsArchived, "IsArchived");
        public bool IsArchived
        {
            get { return this.GetProperty(IsArchivedProperty); }
            set { this.LoadProperty(IsArchivedProperty, value); }
        }
            
        private static Csla.PropertyInfo<string> NameProperty =
            RegisterProperty<string>(row => row.Name, "Name");
        public string Name
        {
            get { return this.GetProperty(NameProperty); }
            set { this.LoadProperty(NameProperty, value); }
        }
            
        private static Csla.PropertyInfo<int> OrdinalProperty =
            RegisterProperty<int>(row => row.Ordinal, "Ordinal");
        public int Ordinal
        {
            get { return this.GetProperty(OrdinalProperty); }
            set { this.LoadProperty(OrdinalProperty, value); }
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
    }
}
