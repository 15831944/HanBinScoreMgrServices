﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using HanBin.Services.SystemManager;
using HanBin.Common.Component.Data.Base;
using HanBin.Common.Component.Data.Request.HanBin.SystemManage;
using HanBin.Common.Component.Data.Response.HanBin.SystemManager;
using HanBin.Common.Component.Data.Request.HanBin.OrganManage;
using HanBin.Services.OrganManager;
using HanBin.Common.Component.Data.Response.HanBinOrganManager;
using HanBin.Common.Component.Data.Request.HanBin.OfficerManager;
using HanBin.Services.OfficerManager;
using HanBin.Common.Component.Data.Response.HanBin.OfficerManager;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;

namespace HanBin.Presentation.Service.SystemManage
{
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    [JavascriptCallbackBehavior(UrlParameterName = "jsoncallback")]
    public class HanBinSystemManageService : BaseService, IHanBinSystemManageService
    {
        private IUserManager userManager;
        private IOrganManager organManager;
        private IOfficerManager officerManager;
        private ILogManager logManager;

        public HanBinSystemManageService()
        {
            this.userManager = new UserManager();
            this.organManager = new OrganManager();
            this.officerManager = new OfficerManager();
            this.logManager = new LogManager();
        }

        #region 用户管理
        public BaseResponse<LoginResult> Login(LoginParameter parameter)
        {
            return userManager.Login(parameter);
        }

        public BaseResponse<bool> AddUser(AddUserParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.AddUser(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Code = "JWT_ERR";
                response.Reason = "JWT_ERR";

                return response;
            }
        }

        public BaseResponse<bool> EditUser(EditUserParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.EditUser(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";

                return response;
            }
        }

        public BaseResponse<GetUserInfoResult> GetUserInfo(GetUserInfoParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.GetUserInfo(parameter);
            }
            else
            {
                BaseResponse<GetUserInfoResult> response = new BaseResponse<GetUserInfoResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";

                return response;
            }
        }

        public BaseResponse<bool> ChangeUseStatus(ChangeUseStatusParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.ChangeUseStatus(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> DeleteUser(DeleteUserParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.DeleteUser(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> ResetPWD(ResetPWDParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.ResetPWD(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> UpdatePWD(UpdatePWDParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.UpdatePWD(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";

                return response;
            }

        }
        #endregion

        #region 单位管理
        public BaseResponse<bool> AddOrganizationRecord(AddOrganParameter param)
        {
            if (Validate(param))
            {
                return organManager.AddOrganizationRecord(param);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";

                return response;
            }
        }

        #region 获取单位详细信息
        public BaseResponse<GetOrganDetailInfoResult> GetOrganDetailInfo(GetOrganDetailInfoParameter parameter)
        {
            if (Validate(parameter))
            {
                return organManager.GetOrganDetailInfo(parameter);
            }
            else
            {
                BaseResponse<GetOrganDetailInfoResult> response = new BaseResponse<GetOrganDetailInfoResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 编辑单位
        public BaseResponse<bool> EditOrganizationRecord(EditOrganParameter parameter)
        {
            if (Validate(parameter))
            {
                return organManager.EditOrganizationRecord(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 删除单位
        public BaseResponse<bool> DeleteOrganRecord(DeleteOrganParameter param)
        {
            if (Validate(param))
            {
                return organManager.DeleteOrganRecord(param);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 获取单位列表
        public BaseResponse<GetOrganListResult> GetOrganList(GetOrganInfoListParameter parameter)
        {
            if (Validate(parameter))
            {
                return organManager.GetOrganList(parameter);
            }
            else
            {
                BaseResponse<GetOrganListResult> response = new BaseResponse<GetOrganListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion
        #endregion

        #region 干部管理
        #region 添加干部
        public BaseResponse<bool> AddOfficerRecord(AddOfficerParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.AddOfficerRecord(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 编辑干部
        public BaseResponse<bool> EditOfficerRecord(EditOfficerParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.EditOfficerRecord(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 获取干部详细信息（不包含积分）
        public BaseResponse<GetOfficerDetailInfoResult> GetOfficerDetailInfo(GetOfficerDetailInfoParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.GetOfficerDetailInfo(parameter);
            }
            else
            {
                BaseResponse<GetOfficerDetailInfoResult> response = new BaseResponse<GetOfficerDetailInfoResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 获取干部积分信息
        public BaseResponse<GetOfficerScoreDetailInfoResult> GetOfficerScoreDetailInfo(GetOfficerScoreDetailInfoParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.GetOfficerScoreDetailInfo(parameter);
            }
            else
            {
                BaseResponse<GetOfficerScoreDetailInfoResult> response = new BaseResponse<GetOfficerScoreDetailInfoResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 编辑积分申请时候，获取积分申请详细信息
        public BaseResponse<GetApplyDetailInfoResult> GetApplyDetailInfo(GetApplyDetailInfoParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.GetApplyDetailInfo(parameter);
            }
            else
            {
                BaseResponse<GetApplyDetailInfoResult> response = new BaseResponse<GetApplyDetailInfoResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 撤销积分申请
        public BaseResponse<bool> CancelScoreApply(CancelScoreApplyParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.CancelScoreApply(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 删除干部
        public BaseResponse<bool> DeleteOfficerRecord(DeleteOfficerParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.DeleteOfficerRecord(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        #region 设置干部退休
        public BaseResponse<bool> SetOfficerOffService(SetOfficerOffService parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.SetOfficerOffService(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        #endregion

        #region 获取单位列表
        public BaseResponse<GetOfficerListResult> GetOfficerList(GetOfficerListParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.GetOfficerList(parameter);
            }
            else
            {
                BaseResponse<GetOfficerListResult> response = new BaseResponse<GetOfficerListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        public BaseResponse<GetOrganTypeResult> GetOrganTypeList(BaseRequest param)
        {
            if (Validate(param))
            {
                return organManager.GetOrganTypeList();
            }
            else
            {
                BaseResponse<GetOrganTypeResult> response = new BaseResponse<GetOrganTypeResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
        #endregion

        public BaseResponse<GetOrganSummaryResult> GetOrganSummary(GetOrganSummaryParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.GetOrganSummary(parameter);
            }
            else
            {
                BaseResponse<GetOrganSummaryResult> response = new BaseResponse<GetOrganSummaryResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetPositionListResult> GetPositionSummary(BaseRequest param)
        {
            if (Validate(param))
            {
                return officerManager.GetPositionSummary();
            }
            else
            {
                BaseResponse<GetPositionListResult> response = new BaseResponse<GetPositionListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetLevelListResult> GetLevelSummary(BaseRequest param)
        {
            if (Validate(param))
            {
                return officerManager.GetLevelSummary();
            }
            else
            {
                BaseResponse<GetLevelListResult> response = new BaseResponse<GetLevelListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetRoleInfoListResult> GetRoleInfoList(BaseRequest param)
        {
            if (Validate(param))
            {
                var headers = WebOperationContext.Current.IncomingRequest.Headers;
                return userManager.GetRoleInfoList();
            }
            else
            {
                BaseResponse<GetRoleInfoListResult> response = new BaseResponse<GetRoleInfoListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetAreaListResult> GetAreaList(BaseRequest param)
        {
            if (Validate(param))
            {
                return organManager.GetAreaList();
            }
            else
            {
                BaseResponse<GetAreaListResult> response = new BaseResponse<GetAreaListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<QueryLogResult> QueryLog(QueryLogParameter param)
        {
            if (Validate(param))
            {
                return logManager.QueryLog(param);
            }
            else
            {
                BaseResponse<QueryLogResult> response = new BaseResponse<QueryLogResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> BackupDB(BaseRequest param)
        {
            if (Validate(param))
            {
                return userManager.BackupDB();
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Code = "JWT_ERR";
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetBackupLogResult> GetBackupLogList(GetBackupLogParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.GetBackupLogList(parameter);
            }
            else
            {
                BaseResponse<GetBackupLogResult> response = new BaseResponse<GetBackupLogResult>();
                response.IsSuccessful = false;
                response.Code = "JWT_ERR";
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> DeleteBackup(DeleteBackupParameter parameter)
        {
            if (Validate(parameter))
            {
                return userManager.DeleteBackup(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Code = "JWT_ERR";
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<AllOfficerListPerSecondAdminReult> GetAllOfficerListPerSecondAdmin(GetAllOfficerListPerSecondAdminParameter parameter)
        {
            if (Validate(parameter))
            {
                return officerManager.GetAllOfficerListPerSecondAdmin(parameter);
            }
            else
            {
                BaseResponse<AllOfficerListPerSecondAdminReult> response = new BaseResponse<AllOfficerListPerSecondAdminReult>();
                response.IsSuccessful = false;
                response.Code = "JWT_ERR";
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetMainOrganTypeResult> GetMainOrganType(BaseRequest param)
        {
            if (Validate(param))
            {
                return organManager.GetMainOrganType();
            }
            else
            {
                BaseResponse<GetMainOrganTypeResult> response = new BaseResponse<GetMainOrganTypeResult>();
                response.IsSuccessful = false;
                response.Code = "JWT_ERR";
                response.Reason = "JWT_ERR";
                return response;
            }
        }
    }
}
