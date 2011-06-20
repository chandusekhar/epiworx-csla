﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Epiworx.Business;

namespace Epiworx.WebMvc.Models
{
    public class UserListModel : ModelBase
    {
        private IEnumerable<UserInfo> Users { get; set; }
    }
}