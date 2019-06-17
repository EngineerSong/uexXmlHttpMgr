//
//  AFJSONResponseSerializerWithData.h
//  ACPluginNetwork
//
//  Created by 宋庆杰 on 2019/4/25.
//

#import <AFNetworking/AFNetworking.h>

static NSString * const JSONResponseSerializerWithDataKey = @"body";
static NSString * const JSONResponseSerializerWithCodeKey = @"statusCode";

@interface AFJSONResponseSerializerWithData : AFHTTPResponseSerializer

@end
