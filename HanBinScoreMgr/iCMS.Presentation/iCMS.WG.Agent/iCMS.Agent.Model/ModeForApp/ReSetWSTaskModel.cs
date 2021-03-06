﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace iCMS.WG.Agent.Model
{
    public class ReSetWSTaskModel : TaskModelBase
    {
        /// <summary>
        /// 待重启的WS的MAC地址结合
        /// </summary>
        public List<string> macList { set; get; }

        public override string operatorName
        {
            get
            {
                return "ReSetWSOper";
            }

        }
    }
}
