# CLSlideView
几部操作完成网易、凤凰今日头条等新闻页面

### 正文
原谅我小小的标题党一下，最终创建的UI效果如图，
展示的cell只有一种，适合文章之类的新闻展示，如果需要开发类似网易、凤凰新闻UII，请使用此控件封装自定义创建 https://github.com/rayonchen/CLSlidePageView_Simple
![img](http://img2.ph.126.net/xTKDn0j1VE9oo0wEe93zgA==/6632420165004634604.png)

- 头部区域会自动适配，逻辑与主流新闻APP相似，UI效果我会努力升级
- 下部的tableView能够上拉、下拉刷新，可配置

### 使用说明

- 导入`多个tableView的组合`文件夹，在相应类`#import "SlideTableView.h" #import "Macro.h"`
- 创建SlideTableView
```
- (SlideTableView *)slideView
{
    if (!_slideView) {
        // 文章的URL
        NSString *url = @"http://app.qdyq.com/appapi/article/articleList/1637";
        /**
         CLSlideView使用手册
         
         1、根据titles参数创建滑动页数量
         2、paramentArry是所有页面的URL参数
         3、创建cell类，需继承SlideTableCell类
         4、创建model类，需继承SlideModel类
         5、在block中设置'slideView.pageStr ='，让系统知道代表页数的参数名
         6、其余数据可随意设置，并在代理方法中获得点击事件
         
         */
        
        CGRect rect = CGRectMake(0, 30, self.view.width, self.view.height - 30);// 根据需求设置frame
        _slideView = [[SlideTableView alloc]initWithFrame:rect delegate:self titles:self.titles pathUrl:url paramentArry:self.paramArray cellClass:[ArticleListCell class] model:[ArticleListModel class] block:^(SlideTableView *slideView) {
            
            // 需要提前设置的参数放block里面
            slideView.rowHeight = 120;
            slideView.lineColor = cColor_666666;
            slideView.pageStr = @"page";
            slideView.paramStyle = SlideTableParamHasPageAndRows;
            slideView.showTableIndex = 0;
            
        }];
        
        _slideView.isFootRefres = YES;
        
    }
    return _slideView;
}
```

- SlideTableView类中有许多属性，不清楚的可以issues，有任何建议与意见也请Issues me
##### PS：下载后记得使用pod install，需要用到的第三方也放在了podfile.md中

        
