//
//  ViewController.m
//  Test
//
//  Created by gangyi1 on 2021/10/28.
//

#import "ViewController.h"
#import "GreenView.h"
#import "RedView.h"
#import "BlueView.h"

#import "MarkGestureRecognizer.h"
#import "CTDisplayView.h"



@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    CTDisplayView *dview = [[CTDisplayView alloc] init];
    dview.clipsToBounds = NO;
    dview.frame = CGRectMake(50, 100, 320, 300);
    dview.backgroundColor = [UIColor greenColor];
    [self.view addSubview:dview];
    
}

#pragma mark - CoreText


#pragma mark - 响应链测试

- (void)testResponder
{
    BaseView *view = [[BaseView alloc] init];
    view.frame = CGRectMake(100, 100, 300, 300);
    [self.view addSubview:view];
    
    RedView *rview = [[RedView alloc] init];
    rview.frame = CGRectMake(50, 50, 200, 200);
    [view addSubview:rview];

    GreenView *gview = [[GreenView alloc] init];

    gview.frame = CGRectMake(20, 20, 100, 100);
//    gview.needTouch = YES;
    [rview addSubview:gview];
//
//    BlueView *bview = [[BlueView alloc] init];
//
////    bview.frame = CGRectMake(20, 20, 50, 50);
////    [gview addSubview:bview];
//    bview.frame = CGRectMake(20, CGRectGetMaxY(view.frame) + 50, 100, 100);
//    [self.view addSubview:bview];
//
//
//    RedView *rview2 = [[RedView alloc] init];
//    rview2.frame = CGRectMake(100, 600, 100, 200);
//    [self.view addSubview:rview2];
//
//    MarkGestureRecognizer *markges = [[MarkGestureRecognizer alloc] initWithTarget:self action:@selector(mark)];
//    [self.view addGestureRecognizer:markges];
}

- (void)mark
{
    NSLog(@"mark");
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [super touchesBegan:touches withEvent:event];
//    NSLog(@"-----x Began");
//}
//
//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [super touchesMoved:touches withEvent:event];
//    NSLog(@"-----x Moved");
//}
//
//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    [super touchesEnded:touches withEvent:event];
//    NSLog(@"-----x Ended");
//}
//
//- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [super touchesCancelled:touches withEvent:event];
//    NSLog(@"-----x Cancelled");
//}

@end
