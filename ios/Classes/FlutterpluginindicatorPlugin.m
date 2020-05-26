#import "FlutterpluginindicatorPlugin.h"
#import "FlutterActivityIndicator.h"

@implementation FlutterpluginindicatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  //[SwiftFlutterpluginindicatorPlugin registerWithRegistrar:registrar];
  [registrar registerViewFactory:[[FlutterActivityIndicatorFactory alloc] initWithMessenger:registrar.messenger] withId:@"plugins/activity_indicator"];
}
@end
