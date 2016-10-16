//
//  WLFGuiFanVC.m
//  standard
//
//  Created by DeterTao on 16/10/16.
//  Copyright © 2016年 DeterTao. All rights reserved.
//

#import "WLFGuiFanVC.h"

/*
 备注：引用的头文件，尽量放到.m文件里面引入，上面是系统头文件，下面工程头文件
 */
#import <AddressBook/AddressBook.h>
#import <CoreText/CoreText.h>
//#import "WLFSYViewModel.h" //model 类
//#import "WLRHelpCenter.h" //request 类

/*
 备注：宏定义，WLK_起始，表示宏，后面的字符用驼峰法，便于识别，并且要加入本模块名称，尽量避免与其他模块有命名冲突
 */
/*
 备注：控件的tag值，用当前时间（年月日时分）表示
 */
/*
 备注：后面的定义内容记得使用‘（）’，避免不必要的错误，养成习惯
 */
#define WLK_GuiFan_Tag_AlertView (1403241642) /// view的tag

#define WLK_GuiFan_WLN_Demo @"WLK_GuiFan_Demo" /// Home通知


typedef void (^blockDemo)(); /// XXX的Block回调


/*
 备注：Delegate要一个一行，<和>符号要单独一行，并且经历区分系统和自定义代理
 */
@interface WLFGuiFanVC ()
<
UIAlertViewDelegate,
WLDDemoDelegate,
UITableViewDataSource,
UITableViewDelegate
>
{
    /*
     备注：类实例变量用_结尾
     */
    /*
     备注：*号与变量挨着
     */
    /*
     备注：命名使用驼峰法，开头表示变量类型，以3-6个字母最佳，但要保证语义明确，特殊情况特殊处理
     */
    
    /**************************** 控件类 ****************************/
    
    UIView *viewDemo_;
    
    UIViewController *vcDemo_;
    
    UITableView *tabvDemo_;
    UITableViewCell *cellDemo_;
    
    UIScrollView *scrvDemo_;
    
    UIImage *imgDemo_;
    
    UIImageView *imgvDemo_;
    
    UILabel *labDemo_;
    
    UIButton *btnDemo_;
    
    UITextField *textfDemo_;
    
    UITextView *textvDemo_;
    
    UIAlertView *altvDemo_;
    
    UISwitch *swtDemo_;
    
    UISearchBar *sbarDemo_;
    
    UINavigationBar *navbDemo_;
    
    UINavigationController *navcDemo_;
    
    UIToolbar *tbarDemo_;
    
    UIColor *colorDemo_;
    
    UIProgressView *progvDemo; /// 进度条类型
    
    UITapGestureRecognizer *gestapDemo_;
    
    UIPanGestureRecognizer *gespanDemo_;
    
    UIPinchGestureRecognizer *gespinDmeo_;
    
    UIRotationGestureRecognizer *gesrotDemo_;
    
    UILongPressGestureRecognizer *gesLongPress_;
    
    CABasicAnimation *cabamDemo_;
    
    CGAffineTransform afftransformDemo_;
    
    UIControl *ctrlDemo_;
    
    UIPageControl *pagecDemo_;
    
    /**************************** 数据类 ****************************/
    
    BOOL isDemo_;
    
    NSInteger intDemo_;
    NSUInteger uintDemo_;
    
    CGFloat fltDemo_;
    
    /// c开头表示C类型
    int cintDemo;
    unsigned int cuintDmoe;
    
    float cfltDemo_;
    double cdblDemo_;
    
    NSNumber *numDemo_;
    
    CGPoint pointDemo_;
    
    NSData *dataDemo_;
    
    NSDate *dateDemo_;
    
    NSDateFormatter *dateFmtDemo_;
    
    NSObject *objDemo_;
    
    NSValue *valDemo_;
    
    NSLock *lockDemo_;
    
    /// 不可变与可变，m表示可变
    NSString *strDemo_;
    NSMutableString *mstrDemo;
    
    /// 富文本
    NSMutableAttributedString *matbstrDemo_;
    NSAttributedString *atbstrDemo_;
    
    NSArray *aryDemo_;
    NSMutableArray *maryDemo_;
    
    NSDictionary *dicDemo_;
    NSMutableDictionary *mdicDemo_;
    
    NSTimer *timerDemo_;
    
    NSTimeInterval *timeinvDemo_;
    
    NSSet *nsetDemo_;
    
    NSURL *urlDemo_;
    
    NSURLConnection *connDemo_;
    NSMutableURLRequest *mreqDemo_;
    
    CGSize *sizeDemo_;
    
    CGRect rectDemo_;
    
    UIEdgeInsets insetDemo_;
    
    NSNotificationCenter *notif;
    
    SEL selDemo_;
    
    NSHTTPCookie *cookie;
    
    /// 正则表达式对象
    NSRegularExpression *regularexpDemo_;
    
    /// NSDataDetector是NSRegularExpression的子类，用于检测半结构化的数据，日期，地址，URL，电话号码等
    NSDataDetector *dataDetectorDemo_;
    
    /// NSRegularExpression对象匹配出来的结果对象，包含属性：1.所属类型2.在原字符串中的范围
    NSTextCheckingResult *textcresultDemo_;
    
    /// id类型，能确定接收的id类型时，接上具体类型
    id idDemo_;
    id idDicDemo_;
    id idAryDemo_;
    
    NSCache *cacheDemo;
    
    NSRange rangeDemo_;
    
    /// cf开头的类，要注意手动释放
    CFStringRef cfstrDemo_;
    
    CFArrayRef cfaryDemo_;
    
    /**************************** 通讯录类命名 ****************************/
    
    /// 以cfab开头:cf代表Core Foundation，ab代表通讯录
    
    ABAddressBookRef cfababrDemo_; /// 通讯录
    
    ABRecordRef cfabrecordrDemo_; /// 通讯录单个联系人
    
    ABMultiValueRef cfabmulvrDemo_; /// 通讯录多值属性
    
    /*************************** coreText类命名 **************************/
    
    /// 以cf开头的是要需要注意释放的
    
    CTFramesetterRef cfframesetDemo_; /// 画布生成器
    
    CTFrameRef cfframeDemo_; /// 画布
    
    CTParagraphStyleSetting parastylesetDemo_; /// 段落格式设置
    
    CTLineBreakMode linebreakmodeDemo_; /// 行省略模式
    
    CTParagraphStyleRef cfparastyleDemo_; /// 段落格式
    
    CTRunDelegateRef cfrundelDemo_; /// CTRun的委托
    
    CTRunDelegateCallbacks rundelcallbacksDemo_; /// CTRun的委托回调，设置返回宽、高等值的block
    
    CGMutablePathRef cfmpathDemo_;
    
    CTLineRef cflineDemo_; /// 行
    
    CTRunRef cfrunDemo_; /// 每行中的元素
    
    /**************************** 自定义类命名 ****************************/
    
    blockDemo blockDemo_;
    
    WLE_Demo enumDemo_;// 枚举变量
    
//    WLFSYViewModel *vmodelDemo_; /// ViewModel
}

/*
 备注：属性变量使用方式：
 初始化时用.方法
 调用方式时用_方法
 属性都不用实现属性 @synthesize
 */
/// 变量要有注释
@property (nonatomic, strong) UIButton *btnDemo;

@end


@implementation WLFGuiFanVC


#pragma mark - *********************************** View Lifecycle **********************************

/*
 备注：注意空格，-与(符号之间有空格
 */
- (void)viewDidLoad
{
    /*
     备注：官方代码 [super viewWillAppear:animated]; 都写在了逻辑代码之前，但是官方给出 ,
     you must call super at some point in your implementation. 必须调用super 但调用时机自己定
     综合而论，以官方为准，［super class］写在逻辑代码之前
     */
    [super viewDidLoad];
    
    [self initVariable]; /// 初始化变量
    [self initViews]; /// 初始化界面
    
    /*
     备注：网络请求以req_开头，后面跟请求URL的宏定义
     */
    [self req_URL_HelpCenter]; /// 发送请求
    
    /*
     备注：通知函数尽量放到最后再执行
     */
    [self regNotification]; /// 注册消息
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 默认隐藏显示Bottom 等
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc
{
    /*
     备注：使用自己的LOG标示符，两种方式
     */
    //    LOG_TXF;
    //    LOG_TXF_(@"test");
    
    ///
    /*
     备注：如果使用通知，最后别忘了释放哈，两种方式
     */
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:WLK_GuiFan_WLN_Demo
                                                  object:nil];
}


#pragma mark - *********************************** Init All Views **********************************

- (void)initVariable
{
    /// 局部变量正常命名，直接使用即可
    NSString *strName = @"测试";

}

- (void)initViews
{
    [self initNavView]; /// 初始化Nav导航栏
    
    /// 根据界面情况，决定是单独写函数，或直接写Views
    [self initMainViews];
}

- (void)initNavView
{
    /// 导航栏初始化方法，2015-07-21

    /// 按钮点击事件命名: btnClickDemo:
    /// btnClick + 按钮名字Demo + :
}

- (void)initMainViews
{
    /*
     备注：增加手势时，相应函数名字开头部分与变量名保持一致，并且一定带参数，函数放到Button Touch Event下面
     */
    UITapGestureRecognizer *gestap = [UITapGestureRecognizer alloc];
    [gestap addTarget:self action:@selector(gestapTouchDemo:)];
    [self.view addGestureRecognizer:gestap];
    
    // 创建页面
}


#pragma mark - ************************************* Functions *************************************
#pragma mark - 关于带小数位的数字的比较
/*
 备注： (凡是遇到小数比较时，都需要转换成CGfloat(double)进行比较，尤其是字符串转小数，float 只能存放前8位（包括小数点），
 double可以存放16位，根据后台的数据8位存在风险，建议遇到比较小数大小时都转换成CGFloat（double）去比较)
 */
/// 2015-04-29 11:34  关于带小数位的数字的比较
- (void)compareStr:(NSString *)strTest
{
    CGFloat fltTest = [strTest doubleValue];
    CGFloat fltStand = 234.34;
    
    if(fltTest == fltStand)
    {
        
    }
    else
    {
        
    }
}

#pragma mark - Demo 内存

- (void)demoMemory
{
    /*
     备注：函数、for、if等后面的中括号要另起一行
     */
    /*
     备注：变量命名时，尽量多些几个字母，一看就能懂，当然，像下面这种只是简单循环的变量可以使用i、j之类，仅此而已
     */
    for (NSInteger i=0; i<10; i++)
    {
        for (NSInteger j=0; j<20; j++)
        {
            if (i == j)
            {
                return;
            }
            else
            {
                ;
            }
        }
    }
}

#pragma mark - Demo 逻辑

- (void)demoLogic
{
    /*
     备注：使用if、switch判断时，一定要加入默认处理，便于逻辑判断
     */
    BOOL isTure = NO;
    NSInteger type = 1;
    
    /*
     备注：使用BOOL变量，尽量避免与YES、NO直接对比，直接使用即可
     */
    if (isTure)
    {
        NSInteger type = 1;
        
        switch (type)
        {
            case 0:
//                LOG_deter_(@"0");
                break;
                
            case 1:
//                LOG_deter_(@"1");
                break;
                
            default:
//                LOG_deter_(@"nil");
                break;
        }
    }
    else
    {
//        LOG_deter_(@"0");
    }
    
    
    /*
     备注：多个判断条件时，建议使用下面的方式，便于删除和增加
     */
    
    /*
     备注：当有多个条件时，多使用()小括号，使代码更明确
     */
    if (
        (type > 0)
        || (type > 1 && type > 3) /// 好多判断啊
        || (type > 2)
        || (type > 3)
        || (type > 4)
        )
    {
//        LOG_deter_(@"0");
    }
    else
    {
//        LOG_deter_(@"hehe");
    }
    
    /*
     备注：三目运算符，？、：前后都加空格
     */
    //    isTure = (1) ? (1) : (0);
}

#pragma mark - Demo String

- (void)demoString
{
    /*
     备注：使用String时要加入保护
    *／
     
    
    NSString *strText;
    if (WLK_Str_Class(strText))
    {
        if (WLK_Str_Is_Valid(strText))
        {
            LOG_deter_(@"%@",strText);
        }
    }
      */
}

#pragma mark - Demo Dict

- (void)demoDict
{
    /*
    NSString *strText;
    
    NSDictionary *dict = @{
                           @"demo":WLK_Str_Protect(strText), /// 这种赋值方式一定要加保护，否则容易Crash
                           };
    
    NSString *strHe = [NSString stringWithString:WLK_Str_Protect(strText)];
    
    [dict setValue:strHe forKey:@"demo"]; /// 这种赋值方式一定要使用setValue，否则容易Crash
    */
}

#pragma mark - Demo 定时器

/*
 备注：Timer事件必须带有参数
 */
- (void)timerHandle:(NSTimer *)timer
{
    
}

#pragma mark - 注册消息

- (void)regNotification
{
    /*
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(wln_HomeNotif)
                                                 name:WLK_GuiFan_WLN_Demo
                                               object:nil];
     */
}

#pragma mark - demo

- (void)demo
{
    /*
     备注：当修改之前的代码时，或者修改别人的代码时，一定要增加注释，格式如下
     当产品等人修改需求时，或修改重要的问题时，一定要增加注释，格式如下
     */
    
    /// 2014-12-02 09:34 deter 简单类型的注释Demo
    NSInteger intTest = 0;
    intTest = intTest;
    
    /*
     备注：使用测试代码时，一定要注意，必须加入特殊的标示符，便于发现，目前有两种方式：
     */
    
    /*
     1、添加全局宏定义 TESTCODE_XuYaoShanChu，release环境下会报错，便于上线前删除测试代码
     
     if (TESTCODE_XuYaoShanChu)
     {
     /// 测试代码
     }
     */
    
    /*
     2、使用关键字#warning
     */
#warning 测试代码 /// 测试代码要
    //    NSString *strTest = @"";
    //    strTest = @"Test";
}


#pragma mark - ********************************* Button Touch Event ********************************

/*
 备注：Button点击事件必须带有参数，并以btn开头命名
 不确定用不用参数可以用id表示类型，并且使用sender参数名
 */
- (void)btnClickBack:(id)sender
{
   // ...
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)btnClickRight:(id)sender
{
    /*
     ...
      */
}

#pragma mark - 手势响应方法

/// 点击手势
- (void)gestapTouchDemo:(UITapGestureRecognizer *)gestap
{
    
}


#pragma mark - ******************************** Net Connection Event *******************************

#pragma mark - 请求 帮助中心

/*
 备注：每个URL，都写上相应的编号和含义，并且名字和服务器保持一致
 */
/*
 备注: 发送请求的初始化方法很多，根据接口的需求发送对应的请求
 */
- (void)req_URL_HelpCenter
{
    /*
     备注：有些异步非阻塞式请求，再第一次请求没回来时，再发下一个请求时，需要考虑是否将上个请求cancel掉
    
    if (!_reqHelpCenter)
    {
        [_reqHelpCenter cancelRequest];
        _reqHelpCenter = nil;
    }
    else
    {
        
    }
    
    _reqHelpCenter = [[WLRHelpCenter alloc] init];
    
     备注: 在代码块回调方法中，
     1.如果需要当前VC中的OC类型的属性，方法，成员变量操作时，需要先将当前VC通过__weak 弱引用，
     通过弱引用下的VC对象调用
     2. 局部变量不需要弱引用
     3. 如果为局部变量赋值，需要引用__block来声明代码块内可变的临时变量
    
     备注：block使用方式与系统默认方式不一样，没办法啊，如果采用系统默认方式，代码会更难看
     采用下面的方式，但是要多加回车
     这种方式只是针对网络回调block，而其他的block调用还是走默认方式啊
    
    __weak WLFGuiFanVC *weakSelf = self;
    
    [_reqHelpCenter setNetHUDShowView:self.view];
    /// 设置请求参数
    [_reqHelpCenter setReqParams:nil];
    /// 设置请求路径
    [_reqHelpCenter setReqUrl:nil];
    /// 默认post
    [_reqHelpCenter setHttpReqType:POST];
    
    /// 设置网络请求方式（普通，虚拟） 默认普通网络
    [_reqHelpCenter setReqMode:ReqMode_Common];
    /// 设置是否可以中途取消转框  默认不可以
    [_reqHelpCenter setCanCanCelForHUD:YES];
    
    /// 设置是否可以点击转框下面的视图 默认不可以
    [_reqHelpCenter setCanClickNetViewForHUD:YES];
    
    /// 设置转框是否遮盖导航条  默认NO 不遮盖
    [_reqHelpCenter setIsMask:YES];
    
    /// 设置网络的tag  回调时做网络对象区分
    [_reqHelpCenter setIntReqTag:100];
    
    
    
    for (NSInteger intI = 0; intI < 100; intI ++)
    {
        _reqHelpCenter.intReqTag = intI;
        /// 初始化完成 发送网络请求
        [_reqHelpCenter reqSuccess:^(WLBaseDataRequest *request, NSInteger intTag)
         {

              备注： 代码块里的逻辑尽量封装到对应的方法中，只需要弱引用 weakSelf 就可以了
    
             [weakSelf reqSucc_URL_HelpCenter:request];
             /// 网络请求回来的tag值
             LOG_deter_(@"网络请求回来了成功:%@",@(intTag));
             
         } failed:^(WLBaseDataRequest *request, NSInteger intTag) {
             [weakSelf reqFail_URL_HelpCenter:request];
             LOG_deter_(@"网络请求回来了失败:%@",@(intTag));
             
         } cancel:^(WLBaseDataRequest *request, NSInteger intTag) {
             /// 如果没有实现cancel代码块，默认取消后回调失败模块 failed
             
         }];
        
    }
    
     */
}

/*
 备注：建议网络请求和网络处理函数放在一起，便于阅读
 */
#pragma mark - 处理 帮助中心
/*
- (void)reqSucc_URL_HelpCenter:(WLBaseDataRequest *)req
{
    
}

- (void)reqFail_URL_HelpCenter:(WLBaseDataRequest *)req
{
    
}
*/

#pragma mark - *********************************** Delegate Event **********************************

#pragma mark - 代理 UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    /// 排除取消按钮逻辑，只处理确定按钮逻辑
    if (buttonIndex != 1)
    {
        return;
    }
    
    NSInteger intTag = alertView.tag;
    
    if (intTag == WLK_GuiFan_Tag_AlertView) /// Demo提示框
    {
        
    }
    else
    {
        
    }
}

#pragma mark - 代理 UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // ...
    return nil;
 
}

#pragma mark - 代理 WLDDemoDelegate

- (void)wldReDemo
{
    
}

- (void)wldOpDemo
{
    
}


#pragma mark - ********************************* Notification Event ********************************

#pragma mark - 通知 xxx

- (void)wlnDemo
{
    
}

@end
