﻿using HanBin.Common.Component.Data.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HanBin.Common.Component.Data.Request.HanBin.ScoreManager
{
    public class EditScoreApplyParameter : BaseRequest
    {
        public int ApplyID { get; set; }

        public string ApplySummary { get; set; }

        public List<string> UploadFileList { get; set; }

        public EditScoreApplyParameter()
        {
            this.UploadFileList = new List<string>();
        }

        public int CurrentUserID { get; set; }
    }
}
