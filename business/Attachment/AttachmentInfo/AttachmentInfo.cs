using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Epiworx.Business
{
    [Serializable]
    public partial class AttachmentInfo : Csla.ReadOnlyBase<AttachmentInfo>, IAttachment
    {
        internal AttachmentInfo()
        {
        }
    }
}
