﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HanBin.Services.SystemManager;
using iCMS.Common.Component.Data.Base;
using iCMS.Common.Component.Data.Request.HanBin.SystemManage;
using iCMS.Common.Component.Data.Response.HanBin.SystemManager;
using iCMS.Common.Component.Data.Request.HanBin.OrganManage;
using HanBin.Services.OrganManager;

namespace HanBin.Presentation.Service.SystemManage
{
    public class HanBinSystemManageService : IHanBinSystemManageService
    {
        private IUserManager userManager;
        private IOrganManager organManager;

        public HanBinSystemManageService(IUserManager userManager,IOrganManager organManager)
        {
            this.userManager = userManager;
            this.organManager = organManager;
        }

        #region 用户管理
        public BaseResponse<LoginResult> Login(LoginParameter parameter)
        {
            return userManager.Login(parameter);
        }

        public BaseResponse<bool> AddUser(AddUserParameter parameter)
        {
            return userManager.AddUser(parameter);
        }

        public BaseResponse<bool> EditUser(EditUserParameter parameter)
        {
            return userManager.EditUser(parameter);
        }

        public BaseResponse<GetUserInfoResult> GetUserInfo(GetUserInfoParameter parameter)
        {
            return userManager.GetUserInfo(parameter);
        }
        #endregion

        #region 单位管理
        public BaseResponse<bool> AddOrganizationRecord(AddOrganParameter param) 
        {
            return organManager.AddOrganizationRecord(param);
        }
        #endregion
    }
}
