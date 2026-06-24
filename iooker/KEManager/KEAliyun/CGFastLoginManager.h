//
//  CGFastLoginManager.h
//  iooker
//
//  Created by JJK on 2024/6/6.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^kuaiSuLoginSuccessBlock)(NSString *token, NSString *resultCode);

@interface CGFastLoginManager : NSObject

+ (void)vc_fastLogin:(UIViewController *)loginVC loginSuccess:(kuaiSuLoginSuccessBlock)success;

@end

NS_ASSUME_NONNULL_END
