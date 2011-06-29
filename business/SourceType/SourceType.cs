using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Epiworx.Business
{
    public enum SourceType
    {
        None = 0,
        User = 1,
        Status = 3,
        Project = 4,
        ProjectUser = 5,
        Sprint = 6,
        Story = 7,
        Hour = 8,
        Note = 9,
        Attachment = 10,
        Filter = 11
    }
}
