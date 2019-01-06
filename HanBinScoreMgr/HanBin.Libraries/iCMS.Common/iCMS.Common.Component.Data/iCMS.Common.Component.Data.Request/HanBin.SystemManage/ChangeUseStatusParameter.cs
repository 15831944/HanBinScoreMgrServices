﻿using HanBin.Common.Component.Data.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HanBin.Common.Component.Data.Request.HanBin.SystemManage
{
    public class ChangeUseStatusParameter : BaseRequest
    {
        public int UserID { get; set; }
        public bool UseStatus { get; set; }
    }
}
