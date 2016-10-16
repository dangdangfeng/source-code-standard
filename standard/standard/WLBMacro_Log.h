//
//  WLBMacro_Log.h
//  standard
//
//  Created by DeterTao on 16/10/16.
//  Copyright © 2016年 DeterTao. All rights reserved.
//

#ifndef WLBMacro_Log_h
#define WLBMacro_Log_h


#pragma mark - *********************************** 打印个人标志信息 ***********************************

#define LOG_UserInfo_Deter @"😂😂😂😂Deter😂😂😂😂"   // Deter的LOG


#endif


#pragma mark - *************************************** 打印信息 **************************************



#ifdef LOG_UserInfo_Deter
#define LOG_Deter LOG_Print(LOG_UserInfo_Deter, @"");
#define LOG_Deter_(...) LOG_Print(LOG_UserInfo_Deter, __VA_ARGS__);
#else
#define LOG_Deter {};
#define LOG_Deter_(...) {};
#endif

#endif /* WLBMacro_Log_h */
