using System;
using System.Collections.Generic;

namespace iCMS.Setup.DBUpgrade.NewEF.Models
{
    public partial class View_VELHistoryData
    {
        public int MSiteID { get; set; }
        public string MSiteName { get; set; }
        public int DevID { get; set; }
        public string DevName { get; set; }
        public Nullable<int> TempValue { get; set; }
        public Nullable<int> TempWarnSet { get; set; }
        public Nullable<int> TempAlarmSet { get; set; }
        public Nullable<int> TempStat { get; set; }
        public Nullable<float> SpeedVirtualValue { get; set; }
        public Nullable<float> SpeedVirtualValueWarnSet { get; set; }
        public Nullable<float> SpeedVirtualValueAlarmSet { get; set; }
        public int SpeedVirtualValueStat { get; set; }
        public Nullable<int> ACCPEAKValue { get; set; }
        public Nullable<int> ACCPEAKValueWarnSet { get; set; }
        public Nullable<int> ACCPEAKValueAlarmSet { get; set; }
        public Nullable<int> ACCPEAKValueStat { get; set; }
        public Nullable<int> LQValue { get; set; }
        public Nullable<int> LQWarnSet { get; set; }
        public Nullable<int> LQAlarmSet { get; set; }
        public Nullable<int> LQStat { get; set; }
        public Nullable<int> DisplacementDPEAKValue { get; set; }
        public Nullable<int> DisplacementDPEAKValueWarnSet { get; set; }
        public Nullable<int> DisplacementDPEAKValueAlarmSet { get; set; }
        public Nullable<int> DisplacementDPEAKValueStat { get; set; }
        public Nullable<int> EnvelopPEAKValue { get; set; }
        public Nullable<int> EnvelopPEAKValueWarnSet { get; set; }
        public Nullable<int> EnvelopPEAKValueAlmSet { get; set; }
        public Nullable<int> EnvelopPEAKValueStat { get; set; }
        public System.DateTime CollectitTime { get; set; }
        public int DataType { get; set; }
    }
}
