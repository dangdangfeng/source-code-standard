//
//  WLFGuiFanVC.h
//  standard
//
//  Created by DeterTao on 16/10/16.
//  Copyright © 2016年 DeterTao. All rights reserved.
//

#import <UIKit/UIKit.h>

/*
 备注：这个类是演示使用的，里面标注“备注”的标示是演讲使用，除此之外都是Demo实例
 代码规范：
 1、用的舒服、看着舒服、养成习惯
 2、多用空格，多用回车（这个类里面的东西都是用了大量的空格和回车，大家仔细看看）
 3、命名规范，简单的用英文，复杂的用中文，长度要控制好，别太长了
 4、多用已经定义好的公共方法
 5、尽量消灭警告，如果是第三方代码，就要小心的
 6、注意内存管理
 7、XCODE使用通用的第三方控件，如何自动显示注释、自动对齐
 8、XCODE显示一行的字符，100字符
 9、少用消息机制，多用block、代理
 10、版本的API要考虑到兼容到iOS5，如果API有变动要增加版本控制，特别是电商
 11、如果建立文件夹要先建立物理文件夹，然后拖入到工程里面，禁止在工程里面建立逻辑文件夹
 12、此项目中所有代码都是手写的，禁止使用xid等自动生成代码工具
 13、项目的图片资源，要定期清理一下将不用的图片删除掉
 14、提交代码一定要审核，首先叫组内人员审核，其次是其他组审核；
 15、做界面时，一定考虑适配界面，参考适配文档，目前只有主要界面要考虑iPad适配；
 16、基本类型，首先考虑使用NS框架的类型，不要用C类型
 17、创建Button时，注意button的点击有效区域，要尽量大一些；
 18、注意数据类型在可变和不可变之间的赋值，尽量避免直接赋值，会引起异常；
 19、注释代理使用三个斜杠“///”，因为有些地方系统自动显示注释，养成习惯
 */

/*
 备注：工程中一些命名方式
 
 WLB : Base基类，目前预留给基类工程使用(WL是前缀，根据公司定义。)
 WLC : Custom自定义控件类
 WLD : Delegate代理类
 WLE : Enum枚举类型
 WLF : Function功能类（eg：首页）
 WLM : Model类
 wln : Notification通知函数，函数以小写开头
 WLK : Macro宏定义
 WLR : Request请求类
 */


/*
 备注：自定义枚举类型 前缀以‘WLE_’起头，后面用大家熟悉的驼峰法，便于区分
 这里注意要指定所声明枚举的“数据类型”，还有就是给枚举成员“添加注释”
 NS_ENUM与后面的左括号有一个空格
 起始枚举的数字要有指定的值，养成习惯
 */
typedef NS_ENUM (NSUInteger, WLE_Demo)
{
    /// 枚举demo1注释
    WLE_Demo0 = 0,
    
    /// 枚举demo1注释
    WLE_Demo1,
    
    /// 枚举demo2注释
    WLE_Demo2,
};


/*
 备注：代理类，放在上面引用，而实现放在下面
 */
@protocol WLDDemoDelegate;


/*
 备注：注意空格
 */
/*!
 @author deter, 15-05-14 12:05:31
 
 @brief  此文件的描述，本文件是iOS开发的演示文档，主要包括命名方式、代码规范、代理、通知等
 
 @since 从哪个版本开始，比如4.0.4
 */
@interface WLFGuiFanVC : UIViewController


/*!
 @Author deter, 14-12-05 12:12:13
 
 @brief  对外属性变量
 
 @since 从哪个版本开始，比如4.0.4
 */

/*
 备注：注意空格，把nonatomic放在前面
 */
/*
 备注：外部变量属性，要注意使用哪个属性格式
 */
/*
 备注：不希望外部因非法操作更改了数组内容，用 只读属性 readonly
 */
/*
 备注：基本类型用 assign 属性，这个也都写上，格式上能保持一致
 */
@property (nonatomic, assign, readonly) NSInteger intName;

/*
 备注：数据类型属性首选 copy 属性，如果有特殊需求时用 strong 属性，比如要求有一处数据改变时大家都改变
 */
@property (nonatomic, copy) NSString *strCopyGome;
@property (nonatomic, strong) NSString *strStrongGome;

/*
 备注：代理用 weak 属性
 */
@property (nonatomic, weak) id <WLDDemoDelegate> delegate;

/*
 备注：代码块用 copy 属性
 */
@property (nonatomic, copy) void(^(blockName))(NSInteger intParam);


/*!
 @Author deter, 14-12-01 17:12:08
 
 @brief  对外方法
 
 @since 从哪个版本开始，比如4.0.4
 */
- (void)demo;


@end


/*!
 @Author deter, 14-11-18 18:11:46
 
 @brief  Demo的代理方法
 
 @since 4.0.4
 */
@protocol WLDDemoDelegate <NSObject>

/*
 备注：必须实现的函数，以wldRe开头
 */
@required
- (void)wldReDemo;

/*
 备注：可选实现的函数，以wldOp开头
 */
@optional
- (void)wldOpDemo;


@end
