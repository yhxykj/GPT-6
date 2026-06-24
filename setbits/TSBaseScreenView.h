
#import <UIKit/UIKit.h>

#import "YLNewsPopupObject.h"
#import "BXModityTextObject.h"
#import "VOHeaderObject.h"


NS_ASSUME_NONNULL_BEGIN

@interface TSBaseScreenView : UIView
@property (nonatomic, assign) double  taskPlaying;
@property (nonatomic, assign) double  weixinlabelBtnApplication;
@property (nonatomic, assign) double  recordingInstance;



-(NSInteger)messgaeCompleted:(NSString *)headerSelect;

-(UITableView *)decibelSize_lSlider:(NSDictionary *)bottomDatas;

-(NSArray *)elevtChatlishiSearch:(NSDictionary *)completeRemove;

-(NSString *)reallocStop;

@end

NS_ASSUME_NONNULL_END
