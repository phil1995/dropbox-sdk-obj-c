///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

@class DBTEAMGroupAccessType;
@class DBTEAMMemberProfile;

#pragma mark - API Object

///
/// The `GroupMemberInfo` struct.
///
/// Profile of group member, and role in group.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBTEAMGroupMemberInfo : NSObject <DBSerializable>

#pragma mark - Instance fields

/// Profile of group member.
@property(nonatomic, readonly) DBTEAMMemberProfile * _Nonnull profile;

/// The role that the user has in the group.
@property(nonatomic, readonly) DBTEAMGroupAccessType * _Nonnull accessType;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param profile Profile of group member.
/// @param accessType The role that the user has in the group.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithProfile:(DBTEAMMemberProfile * _Nonnull)profile
                             accessType:(DBTEAMGroupAccessType * _Nonnull)accessType;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `GroupMemberInfo` struct.
///
@interface DBTEAMGroupMemberInfoSerializer : NSObject

///
/// Serializes `DBTEAMGroupMemberInfo` instances.
///
/// @param instance An instance of the `DBTEAMGroupMemberInfo` API object.
///
/// @return A json-compatible dictionary representation of the `DBTEAMGroupMemberInfo` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMGroupMemberInfo * _Nonnull)instance;

///
/// Deserializes `DBTEAMGroupMemberInfo` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBTEAMGroupMemberInfo` API
/// object.
///
/// @return An instantiation of the `DBTEAMGroupMemberInfo` object.
///
+ (DBTEAMGroupMemberInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
