///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

@class DBSHARINGMemberSelector;

#pragma mark - API Object

///
/// The `RemoveFolderMemberArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBSHARINGRemoveFolderMemberArg : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The ID for the shared folder.
@property(nonatomic, readonly, copy) NSString * _Nonnull sharedFolderId;

/// The member to remove from the folder.
@property(nonatomic, readonly) DBSHARINGMemberSelector * _Nonnull member;

/// If true, the removed user will keep their copy of the folder after it's unshared, assuming it
/// was mounted. Otherwise, it will be removed from their Dropbox. Also, this must be set to false
/// when kicking a group.
@property(nonatomic, readonly) NSNumber * _Nonnull leaveACopy;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param sharedFolderId The ID for the shared folder.
/// @param member The member to remove from the folder.
/// @param leaveACopy If true, the removed user will keep their copy of the folder after it's
/// unshared, assuming it was mounted. Otherwise, it will be removed from their Dropbox. Also, this
/// must be set to false when kicking a group.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId
                                        member:(DBSHARINGMemberSelector * _Nonnull)member
                                    leaveACopy:(NSNumber * _Nonnull)leaveACopy;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `RemoveFolderMemberArg` struct.
///
@interface DBSHARINGRemoveFolderMemberArgSerializer : NSObject

///
/// Serializes `DBSHARINGRemoveFolderMemberArg` instances.
///
/// @param instance An instance of the `DBSHARINGRemoveFolderMemberArg` API object.
///
/// @return A json-compatible dictionary representation of the `DBSHARINGRemoveFolderMemberArg` API
/// object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGRemoveFolderMemberArg * _Nonnull)instance;

///
/// Deserializes `DBSHARINGRemoveFolderMemberArg` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBSHARINGRemoveFolderMemberArg`
/// API object.
///
/// @return An instantiation of the `DBSHARINGRemoveFolderMemberArg` object.
///
+ (DBSHARINGRemoveFolderMemberArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
