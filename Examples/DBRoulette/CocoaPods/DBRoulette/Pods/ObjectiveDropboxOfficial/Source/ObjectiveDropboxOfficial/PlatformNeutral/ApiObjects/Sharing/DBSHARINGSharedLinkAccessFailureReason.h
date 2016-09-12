///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

#pragma mark - API Object

///
/// The `SharedLinkAccessFailureReason` union.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBSHARINGSharedLinkAccessFailureReason : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBSHARINGSharedLinkAccessFailureReasonTag` enum type represents the possible tag states
/// with which the `DBSHARINGSharedLinkAccessFailureReason` union can exist.
typedef NS_ENUM(NSInteger, DBSHARINGSharedLinkAccessFailureReasonTag) {
  /// User is not logged in.
  DBSHARINGSharedLinkAccessFailureReasonLoginRequired,

  /// User's email is not verified.
  DBSHARINGSharedLinkAccessFailureReasonEmailVerifyRequired,

  /// The link is password protected.
  DBSHARINGSharedLinkAccessFailureReasonPasswordRequired,

  /// Access is allowed for team members only.
  DBSHARINGSharedLinkAccessFailureReasonTeamOnly,

  /// Access is allowed for the shared link's owner only.
  DBSHARINGSharedLinkAccessFailureReasonOwnerOnly,

  /// (no description).
  DBSHARINGSharedLinkAccessFailureReasonOther,

};

/// Represents the union's current tag state.
@property(nonatomic, readonly) DBSHARINGSharedLinkAccessFailureReasonTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "login_required".
///
/// Description of the "login_required" tag state: User is not logged in.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithLoginRequired;

///
/// Initializes union class with tag state of "email_verify_required".
///
/// Description of the "email_verify_required" tag state: User's email is not verified.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithEmailVerifyRequired;

///
/// Initializes union class with tag state of "password_required".
///
/// Description of the "password_required" tag state: The link is password protected.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPasswordRequired;

///
/// Initializes union class with tag state of "team_only".
///
/// Description of the "team_only" tag state: Access is allowed for team members only.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithTeamOnly;

///
/// Initializes union class with tag state of "owner_only".
///
/// Description of the "owner_only" tag state: Access is allowed for the shared link's owner only.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOwnerOnly;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "login_required".
///
/// @return Whether the union's current tag state has value "login_required".
///
- (BOOL)isLoginRequired;

///
/// Retrieves whether the union's current tag state has value "email_verify_required".
///
/// @return Whether the union's current tag state has value "email_verify_required".
///
- (BOOL)isEmailVerifyRequired;

///
/// Retrieves whether the union's current tag state has value "password_required".
///
/// @return Whether the union's current tag state has value "password_required".
///
- (BOOL)isPasswordRequired;

///
/// Retrieves whether the union's current tag state has value "team_only".
///
/// @return Whether the union's current tag state has value "team_only".
///
- (BOOL)isTeamOnly;

///
/// Retrieves whether the union's current tag state has value "owner_only".
///
/// @return Whether the union's current tag state has value "owner_only".
///
- (BOOL)isOwnerOnly;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBSHARINGSharedLinkAccessFailureReason` union.
///
@interface DBSHARINGSharedLinkAccessFailureReasonSerializer : NSObject

///
/// Serializes `DBSHARINGSharedLinkAccessFailureReason` instances.
///
/// @param instance An instance of the `DBSHARINGSharedLinkAccessFailureReason` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBSHARINGSharedLinkAccessFailureReason` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBSHARINGSharedLinkAccessFailureReason * _Nonnull)instance;

///
/// Deserializes `DBSHARINGSharedLinkAccessFailureReason` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBSHARINGSharedLinkAccessFailureReason` API object.
///
/// @return An instantiation of the `DBSHARINGSharedLinkAccessFailureReason` object.
///
+ (DBSHARINGSharedLinkAccessFailureReason * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
