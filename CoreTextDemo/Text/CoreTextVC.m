//
//  CoreTextVC.m
//  Test
//
//  Created by gangyi1 on 2021/11/12.
//

#import "CoreTextVC.h"
#import "CTDisplayView.h"
#import "CTFrameParserConfig.h"
#import "CTFrameParser.h"
#import "UIView+FrameAdjust.h"

@interface CoreTextVC ()

@property (weak, nonatomic) IBOutlet CTDisplayView *ctView;

@end

@implementation CoreTextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    CTFrameParserConfig *config = [[CTFrameParserConfig alloc] init];
    config.textColor = [UIColor redColor];
    config.width = self.ctView.width;
    
    CoreTextData *data = [CTFrameParser parseContent:@"按照以上原则，我们将`CTDisplayView`中的部分内容拆开。" config:config];
    self.ctView.data = data;
    self.ctView.height = data.height;
    
}


@end
