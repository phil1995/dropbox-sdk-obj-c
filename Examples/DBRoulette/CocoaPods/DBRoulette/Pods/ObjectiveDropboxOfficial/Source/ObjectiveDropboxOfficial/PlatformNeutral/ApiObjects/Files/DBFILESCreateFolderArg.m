///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESCreateFolderArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESCreateFolderArg

#pragma mark - Constructors

- (instancetype)initWithPath:(NSString *)path {
  [DBStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](path);

  self = [super init];
  if (self) {
    _path = path;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESCreateFolderArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESCreateFolderArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESCreateFolderArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESCreateFolderArgSerializer

+ (NSDictionary *)serialize:(DBFILESCreateFolderArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"path"] = valueObj.path;

  return jsonDict;
}

+ (DBFILESCreateFolderArg *)deserialize:(NSDictionary *)valueDict {
  NSString *path = valueDict[@"path"];

  return [[DBFILESCreateFolderArg alloc] initWithPath:path];
}

@end
