//
//  GreenView.m
//  Test
//
//  Created by gangyi1 on 2021/10/28.
//

#import "GreenView.h"
#import "TouchGesture.h"
#import "TapGesture.h"

#import "UITouch+TouchGesture.h"

@interface GreenView ()<UIGestureRecognizerDelegate>

@end

@implementation GreenView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        
        
        
//        TouchGesture *touch = [[TouchGesture alloc] initWithTarget:self action:@selector(touchg:)];
//        touch.delegate = self;
//        touch.name = NSStringFromClass(self.class);
//        [self addGestureRecognizer:touch];
        
        TapGesture *tap = [[TapGesture alloc] initWithTarget:self action:@selector(taptapg:)];
        tap.name = @"绿";
        [self addGestureRecognizer:tap];
        
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panges:)];
        pan.name = @"pan";
        [self addGestureRecognizer:pan];
        
    }
    return self;
}

- (void)panges:(UIPanGestureRecognizer *)pan
{
    switch (pan.state) {
        case UIGestureRecognizerStateBegan:
        {
            NSLog(@"pan move ges begin");
        }
            break;
        case UIGestureRecognizerStateChanged:
        {
            NSLog(@"pan move ges ....");
        }
            break;
        case UIGestureRecognizerStateEnded:
        {
            NSLog(@"pan move ges ended");
        }
            break;
        case UIGestureRecognizerStateCancelled:
        {
            NSLog(@"pan move ges cancelled");
        }
            break;
        default:
        {
            
        }
            break;
    }
}

- (void)taptapg:(UITapGestureRecognizer *)t {
    NSLog(@"green view taptap");
}

//
//- (void)touchg:(TouchGesture *)tap
//{
//    NSLog(@"%@ touch_green", tap.name);
//}
#pragma mark -
//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
//{
//    return NO;
//}

#pragma mark - touches delegate
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
//{
//    NSLog(@"ID-------%@",touch.identifier);
//    
//    if ([gestureRecognizer isKindOfClass:[TouchGesture class]]) {
//        return NO;
//    }
//
//    return YES;
//}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    if (self.needTouch)
////    {
//        NSLog(@"进入-----%@ touch Began", NSStringFromClass([self class]));
////        if ([self isKindOfClass:[BaseView class]])
////        {
////            [super touchesBegan:touches withEvent:event];
////        }
//        NSLog(@"离开-----%@ touch Began", NSStringFromClass([self class]));
////    }
//}
//
//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    if (self.needTouch)
////    {
//        NSLog(@"进入-----%@ touch Moved",NSStringFromClass([self class]));
////        [super touchesMoved:touches withEvent:event];
//    NSLog(@"离开-----%@ touch Moved",NSStringFromClass([self class]));
////    }
//}
//
//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    if (self.needTouch)
////    {
//        NSLog(@"进入-----%@ touch Ended", NSStringFromClass([self class]));
////        if ([self isKindOfClass:[BaseView class]]) {
////            [super touchesEnded:touches withEvent:event];
////        }
//    NSLog(@"离开-----%@ touch Ended", NSStringFromClass([self class]));
////    }
//}
//
//- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    if (self.needTouch)
////    {
//        NSLog(@"进入-----%@ touch Cancelled", NSStringFromClass([self class]));
//        [super touchesCancelled:touches withEvent:event];
//    NSLog(@"离开-----%@ touch Cancelled", NSStringFromClass([self class]));
////    }
//}

@end
