# XBTextField
<br/>
自定义文本输入框，方便设置placeholder的颜色和字体

<br/><br/>
## 效果图：
<br/>
![image](https://github.com/huisedediao/XBTextField/raw/master/show.png)<br/>
<br/>
## 示例代码：
<br>
<pre>
#import "ViewController.h"
#import "XBTextField.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    XBTextField *cgtf=[[XBTextField alloc] initWithFrame:CGRectMake(100, 150, 100, 30)];
    cgtf.backgroundColor=[[UIColor orangeColor] colorWithAlphaComponent:0.2];
    [self.view addSubview:cgtf];
    cgtf.placeholder=@"啥情况";    
    //设置placeholder的颜色
    cgtf.placeholderColor=[UIColor redColor];
}

@end
</pre>