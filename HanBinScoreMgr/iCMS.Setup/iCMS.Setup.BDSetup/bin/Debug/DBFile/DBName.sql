create database DBName 
on  primary  -- 默认就属于primary文件组,可省略
(
/*--数据文件的具体描述--*/
    name='DBName',  -- 主数据文件的逻辑名称
    filename='DBPath\DBName.mdf', -- 主数据文件的物理名称
    size=5mb, --主数据文件的初始大小
    filegrowth=15%--主数据文件的增长率
)
log on
(
/*--日志文件的具体描述,各参数含义同上--*/
    name='DBName_log',
    filename='DBPath\DBName_log.ldf',
    size=2mb,
    filegrowth=1mb
)
