//
//  WLFZiCeVC.m
//  standard
//
//  Created by DeterTao on 16/10/16.
//  Copyright © 2016年 DeterTao. All rights reserved.
//

#import "WLFZiCeVC.h"

@interface WLFZiCeVC ()

@end

@implementation WLFZiCeVC

#pragma mark - ************************************* Functions *************************************


#pragma mark - 调试 打开僵尸模式

- (void)demoZombie
{
#if 0
    启用了僵尸模式的话，它会用一个僵尸来替换默认的dealloc实现，也就是在引用计数降到0时，
    该僵尸实现会将该对象转换成僵尸对象。僵尸对象的作用是在你向它发送消息时，它会显示一段日志并自动跳入调试器。
    
    所以，当在应用中启用NSZombie而不是让应用直接崩溃掉时，一个错误的内存访问就会变成一条无法识别的消息发送给僵尸对象。
    僵尸对象会显示接受到得信息，然后跳入调试器，这样你就可以查看到底是哪里出了问题。
    
    切记：打AppStore包时，最好去掉僵尸模式
    
    
    1、选择Xcode菜单： Product->Edit Scheme；
    2、进入Diagnostics窗口，勾选Zombie Objects选项；
#endif
}

#pragma mark - 调试 设置断点

- (void)demoExceptions
{
#if 0
    有时候我们的程序不知道跑到哪个地方就 crash 了，而 crash 又很难重现。
    
    1、
    保守的做法是在系统抛出异常之前设置断点，具体来说是在 objc_exception_throw处设置断点。设置步骤为：
    
    首先在 XCode 按 CMD + 6，进入断点管理窗口；
    然后点击右下方的 +，增加新的 Symbolic Breakpoint，在 Symbol 一栏输入：objc_exception_throw，然后点击 done，完成。
    
    这样在 Debug 模式下，如果程序即将抛出异常，就能在抛出异常处中断了。
    
    2、
    还有一种方式，使用 All Exceptions 模式。设置步骤为：
    
    首先在 XCode 按 CMD + 6，进入断点管理窗口；
    然后点击右下方的 +，增加新的 Exceptions Breakpoint 即可。
    
#endif
}

#pragma mark - 测试代码加入 相关的宏定义

- (void)demoMacro
{
#if 0
    在测试代码中使用定义的宏，当在Release模式，他会编译报错，使用如下：
    
    //    if (TESTCODE_XuYaoShanChu)
    //    {
    //        /// 测试代码
    //    }
#endif
}

#pragma mark - 测试数据 使用识别度较高的字符

- (void)demoTestData
{
#if 0
    在测试数据中使用识别度较高的字符，比如：
    
    字符串使用“测试”开头；
   
#endif
}

#pragma mark - 测试时 考虑网络差的情况

- (void)demoTestNet
{
#if 0
    在测试时，考虑网络差的情况：
    
    1、请求未结束时是否支持手势返回操作，如果返回是否会Crash；
    2、模拟网络请求失败或超时的处理情况，第一次请求失败时页面是否增加“再次加载”按钮，还是其他处理；
    3、模拟网络超时的情况，可以在网络请求中增加一个延时操作，变相的模拟超时；
    4、模拟网络失败的情况，这个可以采取强制走失败的处理方法；
    5、白盒测试时，可以手动模式特殊情况，比如 让某个字段获取不到、使用Number代替String类型等；
#endif
}

#pragma mark - 开发 功能 时，考虑内存是否释放

- (void)demoTestMemory
{
#if 0
    开发 功能 时，考虑内存是否释放
    1、退出界面时，VC是否执行dealloc；
    2、查看内存是否释放或者降低；
#endif
}

#pragma mark - 开发 界面 时，考虑是否过于复杂

- (void)demoTestUI
{
#if 0
    开发 界面 时，使用XCode自带的工具，检测一下界面设计是否过于复杂，建议简单点好；
    
    开发某些功能时，要特意测试一下极限情况
    1、验证码，手机号码，故意输入错误看看效果；
    2、某些UI现实上，考虑特别长或特别大的情况下现实如何；
#endif
}

#pragma mark - 开发 排列界面 时，考虑奇偶情况

- (void)demoTestArrangeUI
{
#if 0
    开发 排列界面 时，有些界面一行显示多个图片，原则上APP不会对排列做太多操作，比如考虑一行不足时不显示的逻辑。
    后台给多少数据，APP就显示多少个数据，做好自适配就行了。
    这个就要求开发自己测试一下不同数据时显示是否正确。
#endif
}

#pragma mark - 替换 UI资源 时，考虑尺寸、命名等

- (void)demoTestUIResource
{
#if 0
    替换 UI资源 时，考虑一下几点：
    
    1、UED给的图片质量是否太大；
    2、UED给的图片是否都有一倍、二倍、三倍图片；
    3、UED给的图片命名是否规范，通用图片和模块图片命名方式不一致；
    4、通用资源单独放一个文件夹，模块图片放在另一个文件夹下面；
    5、替换图片资源时，一定检查一下是否其他模块也再使用，替换后是否对其他模块也有影响；
#endif
}

@end
