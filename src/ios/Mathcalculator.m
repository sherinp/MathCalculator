/********* Mathcalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface Mathcalculator : CDVPlugin {
  // Member variables go here.
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)add:(CDVInvokedUrlCommand*)command;
-(void)subtract:(CDVInvokedUrlCommand*)command;
@end

@implementation Mathcalculator

- (void)add:(CDVInvokedUrlCommand*)command{
    CDVPluginResult* pluginResult = nil;
    NSNumber* param1 = [[command.arguments objectAtIndex:0] valueforkey:@"param1"];
    NSNumber* param2 = [[command.arguments objectAtIndex:0] valueforkey:@"param2"];
    if (param1 >= 0 && param2 > 0) {
NSString* echo =@(param1 + param2);
pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
}else{
    pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
}
}
- (void)subtract:(CDVInvokedUrlCommand*)command{
    CDVPluginResult* pluginResult = nil;
    NSNumber* param1 = [[command.arguments objectAtIndex:0] valueforkey:@"param1"];
    NSNumber* param2 = [[command.arguments objectAtIndex:0] valueforkey:@"param2"];
    if (param1 >= 0 && param2 > 0) {
NSString* echo =@(param1 - param2);
pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
}else{
    pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
}
}

@end
