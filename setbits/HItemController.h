
#import <UIKit/UIKit.h>

#import "DXVAymentShouObject.h"
#import "XFWImageGraphicsObject.h"
#import "GTextRecordsObject.h"


NS_ASSUME_NONNULL_BEGIN

@interface HItemController : UIViewController
@property (nonatomic, strong) UIButton *  messgaeSortSpeechButton;
@property (nonatomic, assign) double  editRelationListen;
@property (nonatomic, assign) BOOL  valueShouApass;



-(BOOL)markBuying:(double)playCache textMain:(BOOL)textMain;

@end

NS_ASSUME_NONNULL_END
