
#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#define GundongHeaderGundong
#ifdef GundongHeaderGundong
#define Delegate_9First( s, ... ) NSLog( s, ##__VA_ARGS__ )
#else
#define Delegate_9First( s, ... )
#endif

#define ChangeLaunch 200
#define VerticalText 3
#define MainShouDelegate_wFirst 640
enum QLogin {
    idle = 0,
    playing = 1,
    paused = 2,
    stopped = 3,
    draining = 4,
};
typedef enum QLogin QLogin;

 
@protocol AWLXDelegateMenu <NSObject>
 
-(void) playerDidFinish;
@end


@interface YGRecordsImage : NSObject {
    
    AudioStreamBasicDescription audioDescription;
    
    AudioQueueRef audioQueue;
    
    AudioQueueBufferRef audioQueueBuffers[MainShouDelegate_wFirst];
}
@property(nonatomic,assign) id<AWLXDelegateMenu> delegate;

-(void)play;
-(void)pause;
-(void)resume;
-(void)stop;
-(void)drain;
-(void)cleanup;
-(void)setstate :(QLogin)state;
-(void)setsamplerate :(int)sr;
-(int)write:(const char*)buffer Length:(int)len;
-(int)getAudioData:(AudioQueueBufferRef)buffer;
@end
