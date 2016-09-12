///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESGetCopyReferenceArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESGetCopyReferenceArg

#pragma mark - Constructors

- (instancetype)initWithPath:(NSString *)path {
  [DBStoneValidators stringValidator:nil maxLength:nil
                             pattern:@"(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"](path);

  self = [super init];
  if (self) {
    _path = path;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESGetCopyReferenceArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESGetCopyReferenceArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESGetCopyReferenceArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESGetCopyReferenceArgSerializer

+ (NSDictionary *)serialize:(DBFILESGetCopyReferenceArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"path"] = valueObj.path;

  return jsonDict;
}

+ (DBFILESGetCopyReferenceArg *)deserialize:(NSDictionary *)valueDict {
  NSString *path = valueDict[@"path"];

  return [[DBFILESGetCopyReferenceArg alloc] initWithPath:path];
}

@end
