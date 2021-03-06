using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Epiworx.Business
{
    public interface IAttachment
    {
        int AttachmentId { get; }
        string FileType { get; }
        bool IsArchived { get; }
        string Name { get; }
        int SourceId { get; }
        string SourceName { get; }
        int SourceTypeId { get; }
        string SourceTypeName { get; }
        int CreatedBy { get; }
        DateTime CreatedDate { get; }
        int ModifiedBy { get; }
        DateTime ModifiedDate { get; }
    }
}
