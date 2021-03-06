﻿using HanBin.Common.Component.Data.Base.DB;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HanBin.Core.DB.Models
{
    [Table("DICT_OFFICER_POSITION_TYPE")]
    public class OfficerPositionType : EntityBase
    {
        [Key]
        public int PositionID { get; set; }

        public string PositionName { get; set; }

        public int AddUserID { get; set; }

        public int LastUpdateUserID { get; set; }

        public DateTime LastUpdateDate { get; set; }

        public bool IsDeleted { get; set; }
    }
}
