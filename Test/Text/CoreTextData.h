//
//  CoreTextData.h
//  Test
//
//  Created by gangyi1 on 2021/11/8.
//

#import <Foundation/Foundation.h>
@import UIKit;
@import CoreText;

NS_ASSUME_NONNULL_BEGIN

@interface CoreTextData : NSObject

@property (assign, nonatomic) CTFrameRef ctFrame;
@property (assign, nonatomic) CGFloat height;

@end

NS_ASSUME_NONNULL_END
