using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Csla.Rules;
using Csla.Rules.CommonRules;
using Epiworx.Business.Security;
using Epiworx.Core.Validation;

namespace Epiworx.Business
{
    public partial class Filter
    {
        protected override void AddBusinessRules()
        {
            base.AddBusinessRules();

            this.BusinessRules.AddRule(new StringRequired(FilterQueryProperty));
            this.BusinessRules.AddRule(new StringRequired(NameProperty));
            this.BusinessRules.AddRule(new MaxLength(NameProperty, 100));
            this.BusinessRules.AddRule(new IntegerRequired(SourceTypeIdProperty));
        }

        protected static void AddObjectAuthorizationRules()
        {
        }
    }
}
