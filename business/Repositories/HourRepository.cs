using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Epiworx.Core;
using Epiworx.Data;

namespace Epiworx.Business
{
    [Serializable]
    public class HourRepository
    {
        public static Hour HourFetch(int hourId)
        {
            var result = Hour.FetchHour(
                new HourDataCriteria
                {
                    HourId = hourId
                });

            result.Auditor = new HourAuditor(result.Clone());

            return result;
        }

        public static HourInfoList HourFetchInfoList()
        {
            return HourRepository.HourFetchInfoList(
                new HourDataCriteria());
        }

        public static HourInfoList HourFetchInfoList(IStory story)
        {
            return HourInfoList.FetchHourInfoList(
                new HourDataCriteria
                    {
                        StoryId = story.StoryId
                    });
        }

        public static HourInfoList HourFetchInfoList(IProject project)
        {
            return HourInfoList.FetchHourInfoList(
                new HourDataCriteria
                {
                    ProjectId = new[] { project.ProjectId }
                });
        }

        public static HourInfoList HourFetchInfoList(ISprint sprint)
        {
            return HourInfoList.FetchHourInfoList(
                new HourDataCriteria
                {
                    ProjectId = new[] { sprint.ProjectId },
                    SprintId = sprint.SprintId
                });
        }

        public static HourInfoList HourFetchInfoList(IUser user)
        {
            return HourInfoList.FetchHourInfoList(
                new HourDataCriteria
                {
                    UserId = user.UserId
                });
        }

        public static HourInfoList HourFetchInfoList(IUser user, DateTime dateFrom, DateTime dateTo)
        {
            return HourInfoList.FetchHourInfoList(
                new HourDataCriteria
                {
                    UserId = user.UserId,
                    Date = new DateRangeCriteria(dateFrom, dateTo)
                });
        }

        public static HourInfoList HourFetchInfoList(HourDataCriteria criteria)
        {
            criteria.ProjectId = ProjectRepository.ProjectFetchInfoList()
                .Select(row => row.ProjectId)
                .ToArray();

            return HourInfoList.FetchHourInfoList(criteria);
        }

        public static Hour HourSave(Hour hour)
        {
            if (!hour.IsValid)
            {
                return hour;
            }

            Hour result;

            if (hour.IsNew)
            {
                result = HourRepository.HourInsert(hour);
            }
            else
            {
                result = HourRepository.HourUpdate(hour);
            }

            StoryRepository.StoryUpdateDuration(hour.StoryId);

            return result;
        }

        public static Hour HourInsert(Hour hour)
        {
            hour = hour.Save();

            SourceRepository.SourceAdd(hour.HourId, SourceType.Hour, hour.Date.ToShortDateString());

            FeedRepository.FeedAdd(FeedAction.Created, hour);

            return hour;
        }

        public static Hour HourUpdate(Hour hour)
        {
            if (!hour.IsDirty)
            {
                return hour;
            }

            hour = hour.Save();

            SourceRepository.SourceUpdate(hour.HourId, SourceType.Hour, hour.Date.ToShortDateString());

            FeedRepository.FeedAdd(FeedAction.Edited, hour);

            return hour;
        }

        public static Hour HourNew()
        {
            var hour = Hour.NewHour();

            return hour;
        }

        public static bool HourDelete(Hour hour)
        {
            Hour.DeleteHour(
                new HourDataCriteria
                {
                    HourId = hour.HourId
                });

            StoryRepository.StoryUpdateDuration(hour.StoryId);

            FeedRepository.FeedAdd(FeedAction.Deleted, hour);

            return true;
        }

        public static bool HourDelete(int hourId)
        {
            return HourRepository.HourDelete(
                HourRepository.HourFetch(hourId));
        }
    }
}
