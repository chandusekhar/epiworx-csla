using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Epiworx.Business
{
    [Serializable]
    public partial class Timeline : Csla.BusinessBase<Timeline>, ITimeline
    {
        private Timeline()
        {
        }
    }
}
