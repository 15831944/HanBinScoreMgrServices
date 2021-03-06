﻿using HanBin.Common.Component.Data.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HanBin.Common.Component.Data.Request.HanBin.OrganManage
{
    public class EditOrganParameter : BaseRequest
    {
        public int OrganID { get; set; }

        public string OrganCode { get; set; }

        public string OrganFullName { get; set; }

        //public string OrganShortName { get; set; }

        public int OrganTypeID { get; set; }

        public int UpdateUserID { get; set; }

        //public int AreaID { get; set; }

        public int CurrentUserID { get; set; }
    }
}
