//
//  AFJSONResponseSerializerWithData.m
//  ACPluginNetwork
//
//  Created by 宋庆杰 on 2019/4/25.
//

#import "AFJSONResponseSerializerWithData.h"

@implementation AFJSONResponseSerializerWithData

- (id)responseObjectForResponse:(NSURLResponse *)response data:(NSData *)data error:(NSError *__autoreleasing  _Nullable *)error {
    id JSONObject = [super responseObjectForResponse:response data:data error:error];
    
    if (*error != nil) {
        NSMutableDictionary *userInfo = [(*error).userInfo mutableCopy];
        [userInfo setValue:[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] forKey:JSONResponseSerializerWithDataKey];
        [userInfo setValue:[response valueForKey:JSONResponseSerializerWithCodeKey] forKey:JSONResponseSerializerWithCodeKey];
        NSError *newError = [NSError errorWithDomain:(*error).domain code:(*error).code userInfo:userInfo];
        (*error) = newError;
    }
    
    return JSONObject;
}

@end
