﻿using HanBin.Services.ScoreManager;
using HanBin.Common.Component.Data.Base;
using HanBin.Common.Component.Data.Request.HanBin.ScoreManager;
using HanBin.Common.Component.Data.Response.HanBin.ScoreManager;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel.Web;
using System.ComponentModel;
using System.ServiceModel;
using HanBin.Common.Component.Tool;
using System.Web;
using HanBin.Common.Component.Data.Request.HanBin.SystemManage;

namespace HanBin.Presentation.Service.ScoreService
{

    [JavascriptCallbackBehavior(UrlParameterName = "jsoncallback")]
    public class HanBinScoreService : BaseService, IHanBinScoreService
    {
        IScoreManager scoreManager = null;

        public HanBinScoreService()
        {
            this.scoreManager = new ScoreManager();
        }

        public BaseResponse<bool> AddScoreItem(AddScoreItemParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.AddScoreItem(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }

        }

        public BaseResponse<bool> EditScoreItem(EditScoreItemParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.EditScoreItem(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> DeleteScoreItem(DeleteScoreItemParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.DeleteScoreItem(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetScoreItemListResult> GetScoreItemList(BaseRequest param)
        {
            if (Validate(param))
            {
                return scoreManager.GetScoreItemList();
            }
            else
            {
                BaseResponse<GetScoreItemListResult> response = new BaseResponse<GetScoreItemListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> AddScoreApply(AddScoreApplyParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.AddScoreApply(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> EditScoreApply(EditScoreApplyParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.EditScoreApply(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> CheckScoreApply(CheckScoreApplyParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.CheckScoreApply(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<bool> CancelScoreApply(CancelScoreApplyParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.CancelScoreApply(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<SystemStatSummaryResult> SystemStatSummary(SystemStatSummaryParameter  param)
        {
            if (Validate(param))
            {
                return scoreManager.SystemStatSummary(param);
            }
            else
            {
                BaseResponse<SystemStatSummaryResult> response = new BaseResponse<SystemStatSummaryResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetHonourBoardResult> GetHonourBoard(GetHonourBoardParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.GetHonourBoard(parameter);
            }
            else
            {
                BaseResponse<GetHonourBoardResult> response = new BaseResponse<GetHonourBoardResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetBlackBoardResult> GetBlackBoard(GetBlackBoardParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.GetBlackBoard(parameter);
            }
            else
            {
                BaseResponse<GetBlackBoardResult> response = new BaseResponse<GetBlackBoardResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<WhatsToDoSummaryResult> GetWhatsToDoSummary(GetWhatsToDoSummaryParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.GetWhatsToDoSummary(parameter);
            }
            else
            {
                BaseResponse<WhatsToDoSummaryResult> response = new BaseResponse<WhatsToDoSummaryResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetWhatsToDoDetailListResult> GetWhatsToDoDetailList(GetWhatsToDoDetailListParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.GetWhatsToDoDetailList(parameter);
            }
            else
            {
                BaseResponse<GetWhatsToDoDetailListResult> response = new BaseResponse<GetWhatsToDoDetailListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetHighLevelFeedBackSummaryResult> GetHighLevelFeedBackSummary(GetHighLevelFeedBackSummaryParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.GetHighLevelFeedBackSummary(parameter);
            }
            else
            {

                BaseResponse<GetHighLevelFeedBackSummaryResult> response = new BaseResponse<GetHighLevelFeedBackSummaryResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetHighLevelFeedBackDetailListResult> GetHighLevelFeedBackDetailList(GetHighLevelFeedBackDetailListParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.GetHighLevelFeedBackDetailList(parameter);
            }
            else
            {
                BaseResponse<GetHighLevelFeedBackDetailListResult> response = new BaseResponse<GetHighLevelFeedBackDetailListResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<GetScoreChangeHistoryResult> GetScoreChangeHistory(GetScoreChangeHistoryParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.GetScoreChangeHistory(parameter);
            }
            else
            {
                BaseResponse<GetScoreChangeHistoryResult> response = new BaseResponse<GetScoreChangeHistoryResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<ScorePublicShowResult> ScorePublicShow(ScorePublicShowParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.ScorePublicShow(parameter);
            }
            else
            {
                BaseResponse<ScorePublicShowResult> response = new BaseResponse<ScorePublicShowResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<QuerySocreResult> QuerySocre(QuerySocreParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.QuerySocre(parameter);
            }
            else
            {
                BaseResponse<QuerySocreResult> response = new BaseResponse<QuerySocreResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<AreaAverageScoreResult> AreaAverageScore(BaseRequest param)
        {
            if (Validate(param))
            {
                return scoreManager.AreaAverageScore();
            }
            else
            {
                BaseResponse<AreaAverageScoreResult> response = new BaseResponse<AreaAverageScoreResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<AgeAverageScoreResult> AgeAverageScore(AgeAverageScoreParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.AgeAverageScore(parameter);
            }
            else
            {
                BaseResponse<AgeAverageScoreResult> response = new BaseResponse<AgeAverageScoreResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<OrganAverageScoreResult> OrganAverageScore(OrganAverageScoreParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.OrganAverageScore(parameter);
            }
            else
            {
                BaseResponse<OrganAverageScoreResult> response = new BaseResponse<OrganAverageScoreResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }

        public BaseResponse<OrganCategoryAverageScoreResult> OrganCategoryAverageScore(BaseRequest parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.OrganCategoryAverageScore();
            }
            else
            {
                BaseResponse<OrganCategoryAverageScoreResult> response = new BaseResponse<OrganCategoryAverageScoreResult>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }


        public BaseResponse<UpFileResult> UploadFile(string filename, Stream FileStream)
        {
            return null;

            UpFileResult result = new UpFileResult();
            BaseResponse<UpFileResult> response = new BaseResponse<UpFileResult>();

            try
            {
                #region 获取文件名
                var fName = WebOperationContext.Current.IncomingRequest.UriTemplateMatch.RequestUri.ToString();
                int len = fName.Length;
                int pos = fName.LastIndexOf('/');
                var realName = fName.Substring(pos + 1, (len - pos - 1));
                var extention = Path.GetExtension(realName).TrimStart('.');
                var oldName = realName.Substring(0, realName.LastIndexOf('.'));
                var saveFileName = oldName + DateTime.Now.Ticks + "." + extention;

                #endregion

                //获取文件大小
                long fileLength = WebOperationContext.Current.IncomingRequest.ContentLength;

                //UpFile parameter = new UpFile();

                if (true)
                {
                    string path = System.AppDomain.CurrentDomain.BaseDirectory + @"\UploadFiles\";

                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }

                    byte[] buffer = new byte[fileLength];

                    string filePath = Path.Combine(path, saveFileName);
                    FileStream fs = new FileStream(filePath, FileMode.Create, FileAccess.Write);

                    int count = 0;
                    while ((count = FileStream.Read(buffer, 0, buffer.Length)) > 0)
                    {
                        fs.Write(buffer, 0, count);
                    }
                    //清空缓冲区
                    fs.Flush();
                    //关闭流
                    fs.Close();
                    result.FilePath = filePath;
                    response.Result = result;
                    return response;
                }
                else
                {
                    response.IsSuccessful = false;
                    response.Reason = "JWT_ERR";
                    return response;
                }
            }
            catch (Exception e)
            {
                LogHelper.WriteLog(e);
                response.IsSuccessful = false;
                response.Reason = e.Message;
                return response;
            }
        }

        public Stream DownLoadFile(string fileName)
        {
            try
            {
                //string path = System.AppDomain.CurrentDomain.BaseDirectory + @"\UploadFiles\";
                //var FullFileName = Path.Combine(path, fileName);
                //if (File.Exists(FullFileName))
                //{
                //    FileInfo DownloadFile = new FileInfo(FullFileName);
                //    //WebOperationContext.Current.OutgoingResponse.ContentType = "application/pdf";
                //    var contentType = MimeMapping.GetMimeMapping(FullFileName);
                //    WebOperationContext.Current.OutgoingResponse.ContentType = contentType;

                //    WebOperationContext.Current.OutgoingResponse.Headers.Add("Content-Disposition", "attachment;inline;filename=111");
                //    Stream stream = File.OpenRead(FullFileName);
                //    return stream;
                //}
                return null;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public BaseResponse<bool> DeleteFile(DeleteFileParameter parameter)
        {
            if (Validate(parameter))
            {
                return scoreManager.DeleteFile(parameter);
            }
            else
            {
                BaseResponse<bool> response = new BaseResponse<bool>();
                response.IsSuccessful = false;
                response.Reason = "JWT_ERR";
                return response;
            }
        }
    }
}
