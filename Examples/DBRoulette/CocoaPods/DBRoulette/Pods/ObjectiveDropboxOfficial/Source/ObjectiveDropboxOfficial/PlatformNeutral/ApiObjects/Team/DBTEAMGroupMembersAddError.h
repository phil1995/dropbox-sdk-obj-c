///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSerializableProtocol.h"
#import <Foundation/Foundation.h>

#pragma mark - API Object

///
/// The `GroupMembersAddError` union.
///
/// This class implements the `DBSerializable` protocol (serialize and deserialize instance
/// methods), which is required for all Obj-C SDK API route objects.
///
@interface DBTEAMGroupMembersAddError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBTEAMGroupMembersAddErrorTag` enum type represents the possible tag states with which the
/// `DBTEAMGroupMembersAddError` union can exist.
typedef NS_ENUM(NSInteger, DBTEAMGroupMembersAddErrorTag) {
  /// No matching group found. No groups match the specified group ID.
  DBTEAMGroupMembersAddErrorGroupNotFound,

  /// (no description).
  DBTEAMGroupMembersAddErrorOther,

  /// You cannot add duplicate users. One or more of the members you are trying to add is already
  /// a member of the group.
  DBTEAMGroupMembersAddErrorDuplicateUser,

  /// Group is not in this team. You cannot add members to a group that is outside of your team.
  DBTEAMGroupMembersAddErrorGroupNotInTeam,

  /// These members are not part of your team. Currently, you cannot add members to a group if
  /// they are not part of your team, though this may change in a subsequent version. To add new
  /// members to your Dropbox Business team, use the `membersAdd` endpoint.
  DBTEAMGroupMembersAddErrorMembersNotInTeam,

  /// These users were not found in Dropbox.
  DBTEAMGroupMembersAddErrorUsersNotFound,

  /// A suspended user cannot be added to a group as `owner` in `DBTEAMGroupAccessType`.
  DBTEAMGroupMembersAddErrorUserMustBeActiveToBeOwner,

  /// A company-managed group cannot be managed by a user.
  DBTEAMGroupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup,

};

/// Represents the union's current tag state.
@property(nonatomic, readonly) DBTEAMGroupMembersAddErrorTag tag;

/// These members are not part of your team. Currently, you cannot add members to a group if they
/// are not part of your team, though this may change in a subsequent version. To add new members to
/// your Dropbox Business team, use the `membersAdd` endpoint. @note Ensure the `isMembersNotInTeam`
/// method returns true before accessing, otherwise a runtime exception will be raised.
@property(nonatomic, readonly) NSArray<NSString *> * _Nonnull membersNotInTeam;

/// These users were not found in Dropbox. @note Ensure the `isUsersNotFound` method returns true
/// before accessing, otherwise a runtime exception will be raised.
@property(nonatomic, readonly) NSArray<NSString *> * _Nonnull usersNotFound;

/// A company-managed group cannot be managed by a user. @note Ensure the
/// `isUserCannotBeManagerOfCompanyManagedGroup` method returns true before accessing, otherwise a
/// runtime exception will be raised.
@property(nonatomic, readonly) NSArray<NSString *> * _Nonnull userCannotBeManagerOfCompanyManagedGroup;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "group_not_found".
///
/// Description of the "group_not_found" tag state: No matching group found. No groups match the
/// specified group ID.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithGroupNotFound;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

///
/// Initializes union class with tag state of "duplicate_user".
///
/// Description of the "duplicate_user" tag state: You cannot add duplicate users. One or more of
/// the members you are trying to add is already a member of the group.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithDuplicateUser;

///
/// Initializes union class with tag state of "group_not_in_team".
///
/// Description of the "group_not_in_team" tag state: Group is not in this team. You cannot add
/// members to a group that is outside of your team.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithGroupNotInTeam;

///
/// Initializes union class with tag state of "members_not_in_team".
///
/// Description of the "members_not_in_team" tag state: These members are not part of your team.
/// Currently, you cannot add members to a group if they are not part of your team, though this may
/// change in a subsequent version. To add new members to your Dropbox Business team, use the
/// `membersAdd` endpoint.
///
/// @param membersNotInTeam These members are not part of your team. Currently, you cannot add
/// members to a group if they are not part of your team, though this may change in a subsequent
/// version. To add new members to your Dropbox Business team, use the `membersAdd` endpoint.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithMembersNotInTeam:(NSArray<NSString *> * _Nonnull)membersNotInTeam;

///
/// Initializes union class with tag state of "users_not_found".
///
/// Description of the "users_not_found" tag state: These users were not found in Dropbox.
///
/// @param usersNotFound These users were not found in Dropbox.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUsersNotFound:(NSArray<NSString *> * _Nonnull)usersNotFound;

///
/// Initializes union class with tag state of "user_must_be_active_to_be_owner".
///
/// Description of the "user_must_be_active_to_be_owner" tag state: A suspended user cannot be added
/// to a group as `owner` in `DBTEAMGroupAccessType`.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUserMustBeActiveToBeOwner;

///
/// Initializes union class with tag state of "user_cannot_be_manager_of_company_managed_group".
///
/// Description of the "user_cannot_be_manager_of_company_managed_group" tag state: A
/// company-managed group cannot be managed by a user.
///
/// @param userCannotBeManagerOfCompanyManagedGroup A company-managed group cannot be managed by a
/// user.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithUserCannotBeManagerOfCompanyManagedGroup:
    (NSArray<NSString *> * _Nonnull)userCannotBeManagerOfCompanyManagedGroup;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "group_not_found".
///
/// @return Whether the union's current tag state has value "group_not_found".
///
- (BOOL)isGroupNotFound;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves whether the union's current tag state has value "duplicate_user".
///
/// @return Whether the union's current tag state has value "duplicate_user".
///
- (BOOL)isDuplicateUser;

///
/// Retrieves whether the union's current tag state has value "group_not_in_team".
///
/// @return Whether the union's current tag state has value "group_not_in_team".
///
- (BOOL)isGroupNotInTeam;

///
/// Retrieves whether the union's current tag state has value "members_not_in_team".
///
/// @note Call this method and ensure it returns true before accessing the `membersNotInTeam`
/// property, otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "members_not_in_team".
///
- (BOOL)isMembersNotInTeam;

///
/// Retrieves whether the union's current tag state has value "users_not_found".
///
/// @note Call this method and ensure it returns true before accessing the `usersNotFound` property,
/// otherwise a runtime exception will be thrown.
///
/// @return Whether the union's current tag state has value "users_not_found".
///
- (BOOL)isUsersNotFound;

///
/// Retrieves whether the union's current tag state has value "user_must_be_active_to_be_owner".
///
/// @return Whether the union's current tag state has value "user_must_be_active_to_be_owner".
///
- (BOOL)isUserMustBeActiveToBeOwner;

///
/// Retrieves whether the union's current tag state has value
/// "user_cannot_be_manager_of_company_managed_group".
///
/// @note Call this method and ensure it returns true before accessing the
/// `userCannotBeManagerOfCompanyManagedGroup` property, otherwise a runtime exception will be
/// thrown.
///
/// @return Whether the union's current tag state has value
/// "user_cannot_be_manager_of_company_managed_group".
///
- (BOOL)isUserCannotBeManagerOfCompanyManagedGroup;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBTEAMGroupMembersAddError` union.
///
@interface DBTEAMGroupMembersAddErrorSerializer : NSObject

///
/// Serializes `DBTEAMGroupMembersAddError` instances.
///
/// @param instance An instance of the `DBTEAMGroupMembersAddError` API object.
///
/// @return A json-compatible dictionary representation of the `DBTEAMGroupMembersAddError` API
/// object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMGroupMembersAddError * _Nonnull)instance;

///
/// Deserializes `DBTEAMGroupMembersAddError` instances.
///
/// @param dict A json-compatible dictionary representation of the `DBTEAMGroupMembersAddError` API
/// object.
///
/// @return An instantiation of the `DBTEAMGroupMembersAddError` object.
///
+ (DBTEAMGroupMembersAddError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
