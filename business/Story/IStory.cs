using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Epiworx.Business
{
    public interface IStory
    {
        int StoryId { get; }
        int AssignedTo { get; }
        string AssignedToEmail { get; }
        string AssignedToName { get; }
        DateTime AssignedDate { get; }
        DateTime CompletedDate { get; }
        string Description { get; }
        decimal Duration { get; }
        DateTime EstimatedCompletedDate { get; }
        decimal EstimatedDuration { get; }
        bool IsArchived { get; }
        bool IsOpened { get; }
        bool IsCompleted { get; }
        int ProjectId { get; }
        string ProjectName { get; }
        int SprintId { get; }
        string SprintName { get; }
        DateTime StartDate { get; }
        int StatusId { get; }
        string StatusName { get; }
        int ModifiedBy { get; }
        DateTime ModifiedDate { get; }
        int CreatedBy { get; }
        DateTime CreatedDate { get; }
    }
}
