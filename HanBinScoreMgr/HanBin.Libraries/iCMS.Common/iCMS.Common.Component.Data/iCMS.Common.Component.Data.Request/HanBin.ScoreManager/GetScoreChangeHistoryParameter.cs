﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HanBin.Common.Component.Data.Request.HanBin.ScoreManager
{
    public class GetScoreChangeHistoryParameter
    {
        public int? RankNumber { get; set; }

        public int? Page { get; set; }

        public int? PageSize { get; set; }
    }
}