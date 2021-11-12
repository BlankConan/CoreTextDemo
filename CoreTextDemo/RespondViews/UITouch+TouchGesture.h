//
//  UITouch+TouchGesture.h
//  Test
//
//  Created by gangyi1 on 2021/11/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITouch (TouchGesture)

@property (nonatomic, strong) NSNumber *identifier;
@property (nonatomic, strong) NSNumber *stopPropagation;


@end

NS_ASSUME_NONNULL_END
