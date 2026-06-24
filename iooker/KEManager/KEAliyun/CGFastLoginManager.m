//
//  CGFastLoginManager.m
//  iooker
//
//  Created by JJK on 2024/6/6.
//

#import "CGFastLoginManager.h"
#import <ATAuthSDK/ATAuthSDK.h>
#import <SVProgressHUD/SVProgressHUD.h>

@implementation CGFastLoginManager

+ (void)vc_fastLogin:(UIViewController *)loginVC loginSuccess:(kuaiSuLoginSuccessBlock)success {
    
    TXCustomModel *backCell = TXCustomModel.new;
    backCell.expandAuthPageCheckedScope = YES;
    backCell.navColor = UIColor.clearColor;
    backCell.logoImage = [UIImage imageNamed:@"changeAlamofire"];
    backCell.navBackImage = [UIImage imageNamed:@"collectionPopupPrefix_fj"];
    backCell.backgroundColor = [UIColor colorWithRed:13/255 green:9/255 blue:35/255 alpha:1.0];
    backCell.loginBtnBgImgs = @[[UIImage imageNamed:@"loginBtn"],[UIImage imageNamed:@"loginBtn"],[UIImage imageNamed:@"loginBtn"]];
    backCell.privacyAlignment = NSTextAlignmentCenter;
    backCell.changeBtnIsHidden = YES;
    backCell.loginBtnText = NSAttributedString.new;
    backCell.checkBoxIsChecked = YES;
    backCell.checkBoxImages = @[[UIImage imageNamed:@"login_unselect"],[UIImage imageNamed:@"login_select"]];
    backCell.numberColor = UIColor.whiteColor;
    NSDictionary *attributes = @{
        NSForegroundColorAttributeName : [UIColor whiteColor],
        NSFontAttributeName : [UIFont systemFontOfSize:18.0]
    };
    backCell.navTitle = [[NSAttributedString alloc] initWithString:@"一键登录" attributes:attributes];
    
    
    [[TXCommonHandler sharedInstance] getLoginTokenWithTimeout:3.0 controller:loginVC model:backCell complete:^(NSDictionary * _Nonnull resultDic) {
        
        [SVProgressHUD dismiss];
        
        NSLog(@"%@",resultDic);
        
        NSString *resultCode = [resultDic objectForKey:@"resultCode"];
                
        NSArray * codeList = @[@"600002",@"600011",@"600015",@"600013",@"600014",@"600017",@"600004",@"600012"];
        
        if ([codeList containsObject:resultCode]) {
            [SVProgressHUD showErrorWithStatus:resultDic[@"msg"]];
        }
        
        if ([PNSCodeLoginControllerClickLoginBtn isEqualToString:resultCode]) {
            [SVProgressHUD show];
        }
        
        if ([PNSCodeSuccess isEqualToString:resultCode]) {
            
            [SVProgressHUD dismiss];

            NSString *token = [resultDic objectForKey:@"token"];
            NSString *codeID = [resultDic objectForKey:@"requestId"];
           
            if (success) {
                success(token,codeID);
            }
           
        }
    }];
    
}


@end
