//
//  BaseView.m
//  Test
//
//  Created by gangyi1 on 2021/10/28.
//

#import "BaseView.h"


@interface BaseView ()<UIGestureRecognizerDelegate>



@end

@implementation BaseView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        _touchges = [[TouchGesture alloc] initWithTarget:self action:@selector(touchgesAct:)];
        _touchges.delegate = self;
        _touchges.name = NSStringFromClass(self.class);
        [self addGestureRecognizer:_touchges];


//        TapGesture *tap = [[TapGesture alloc] initWithTarget:self action:@selector(taptapb:)];
//        tap.name = @"基";
//        tap.delegate = self;
//        [self addGestureRecognizer:tap];
        
        
//        LongPressgesture *longpress = [[LongPressgesture alloc] initWithTarget:self
//                                                                        action:@selector(longpress:)];
//        longpress.name = @"base";
//        [self addGestureRecognizer:longpress];
    }
    return self;
}

- (void)touchgesAct:(TouchGesture *)ges
{
    NSLog(@"touch_%@", ges.name);
}


//- (void)longpress:(UILongPressGestureRecognizer *)ges
//{
//    NSLog(@"longpress_%@", NSStringFromClass(self.class));
//}

- (void)taptapb:(UITapGestureRecognizer *)tapges
{
    NSLog(@"tap1__%@",NSStringFromClass(self.class));
}



//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
//{
//    if ([gestureRecognizer isKindOfClass:[TouchGesture class]]
//        && ![touch.view isEqual:self]
//        )
//    {
//        return NO;
//    }
//    return YES;
//}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
//{
//    if ([gestureRecognizer isEqual:self.tap1] &&
//        [otherGestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]
////        &&[gestureRecognizer.view isEqual:otherGestureRecognizer.view]
//        ) {
//        return YES;
//    }
//    return NO;
//}


//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    if (self.needTouch)
////    {
//        NSLog(@"进入-----%@ touch Began", NSStringFromClass([self class]));
////        if ([self isKindOfClass:[BaseView class]])
////        {
//            [super touchesBegan:touches withEvent:event];
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
//        [super touchesMoved:touches withEvent:event];
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
//            [super touchesEnded:touches withEvent:event];
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
//
@end
