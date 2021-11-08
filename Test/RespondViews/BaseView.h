//
//  BaseView.h
//  Test
//
//  Created by gangyi1 on 2021/10/28.
//

#import <UIKit/UIKit.h>
#import "TouchGesture.h"
#import "TapGesture.h"
#import "LongPressgesture.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseView : UIView

@property (assign,nonatomic) BOOL needStop;
@property (strong) TouchGesture *touchges;

@end

NS_ASSUME_NONNULL_END
