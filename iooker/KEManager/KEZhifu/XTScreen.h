
#import <Foundation/Foundation.h>
#if defined(__cplusplus)
extern "C"{
#endif
    NSString * weixinBrowser_networkRawing(char * contents, int key, BOOL hasEmoji);
#if defined(__cplusplus)
}
#endif

#import <StoreKit/StoreKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    VDelegateRegister = 0,       
    VItemsSpeeds = 1,        
    VMainItems = 2,        
    VAboutChuang = 3,     
    VDetailsChat = 4,    
    VChatItems = 5,      
}VDelegateCenter;

typedef void (^PaymentCompletionHandle)(VDelegateCenter type, NSData *data, NSString *transaction_id);

@interface XTScreen : NSObject<SKPaymentTransactionObserver,SKProductsRequestDelegate>
{
    PaymentCompletionHandle paymentCompleteHandle;
}
@property (nonatomic, copy) NSString *transaction_id;
@property (nonatomic, copy) NSString *currentPurchasedID;

+ (instancetype)sharedTool;

- (void)zk_resumptionOfPurchase;

- (void)zk_applyPayIosId:(NSString *)iosId completeHandle:(PaymentCompletionHandle)handle;

@end

NS_ASSUME_NONNULL_END
