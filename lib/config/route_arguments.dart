class ProfileArguments {
  final String userUID;
  final String userDisplayName;
  final String username;
  final String userBio;
  final String userImage;

  const ProfileArguments(
      {required this.userUID,
      required this.userDisplayName,
      required this.username,
      required this.userBio,
      required this.userImage});
}

// Reference to pass argument for route
/* onTap: () {
    final args = AltProfileArguments(
      userUID: feedDoc['userUID'],
      userImage: snapshot.data!['photoUrl'],
      username: snapshot.data!['username'],
      userDisplayName: snapshot.data!['displayName'],
      userBio: snapshot.data!['bio'],
    );
    Navigator.pushNamed(
      context,
      AppRoutes.profile,
      arguments: args,
    );
  }, */