//
//  WLFPingShenVC.m
//  standard
//
//  Created by DeterTao on 16/10/16.
//  Copyright © 2016年 DeterTao. All rights reserved.
//

#import "WLFPingShenVC.h"

@interface WLFPingShenVC ()

@end

@implementation WLFPingShenVC

#pragma mark - ************************************* Functions *************************************


#pragma mark - 评审 代码规范

- (void)demoFormat
{
#if 0
    1、首推那些空格、回车和代码对齐方式。。。
    2、文件夹和文件的命名也要规范，这个东西不明白就一起讨论一下；
    3、注释要完整，不要因为一个小功能就不写，大家的记忆力没有那么强，真的；
    4、
#endif
}


#pragma mark - 评审 Crash保护

- (void)demoCrashProtect
{
#if 0
    1、Dictionary，使用 setObject 赋值时，注意 nil 判断；
    可以使用 wlObjectStrForKey 替代系统默认方法；
    给 value 是 string 类型赋值时，可以使用 WLK_Str_Protect 宏保护
    
    2、Array，使用 objectAtIndex、replaceObjectAtIndex 和 removeObjectAtIndex 操作时，注意 数组越界 判断
    可以使用 wlReplaceObjectAtIndex 和 wlRemoveObjectAtIndex替代系统方法；
    
    3、
#endif
}


#pragma mark - 评审 逻辑处理

- (void)demoLogic
{
#if 0
    1、使用 if 时，要问当 else 时，是否需要处理；
        2、使用 switch 时，要问是否考虑 default 处理；
        3、
#endif
        }


#pragma mark - 评审 注意 可变 和 不可变 之间的转换

- (void)demoMutable
{
#if 0
    1、使用；
#endif
}

@end
