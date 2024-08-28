import 'package:flutter/foundation.dart';
import 'package:applimode_app/src/common_widgets/simple_page_list_view.dart';
import 'package:applimode_app/src/common_widgets/web_back_button.dart';
import 'package:applimode_app/src/features/comments/data/post_comments_repository.dart';
import 'package:applimode_app/src/features/comments/presentation/post_comments_item.dart';
import 'package:applimode_app/src/routing/app_router.dart';
import 'package:applimode_app/src/utils/app_loacalizations_context.dart';
import 'package:applimode_app/src/utils/list_state.dart';
import 'package:applimode_app/src/utils/updated_comment_ids_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProfileCommentsScreen extends ConsumerWidget {
  const ProfileCommentsScreen({super.key, required this.uid});

  final String uid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentsQuery = ref.watch(postCommentsQueryProvider(uid: uid));
    final updatedCommentQuery =
        ref.watch(postCommentsRepositoryProvider).postCommentsRef();
    final resetUpdatedDocIds =
        ref.watch(updatedCommentIdsListProvider.notifier).removeAll;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: kIsWeb ? false : true,
        leading: kIsWeb ? const WebBackButton() : null,
        title: Text(context.loc.comments),
      ),
      // body: ProfileCommentsList(uid: uid),
      body: SafeArea(
        top: false,
        bottom: false,
        child: SimplePageListView(
          query: commentsQuery,
          listState: commentsListStateProvider,
          isNoGridView: true,
          itemBuilder: (context, index, doc) {
            final comment = doc.data();
            return PostCommentsItem(
              comment: comment,
              isProfile: true,
              onPressed: () => context.push(ScreenPaths.post(comment.postId)),
            );
          },
          refreshUpdatedDocs: true,
          updatedDocQuery: updatedCommentQuery,
          resetUpdatedDocIds: resetUpdatedDocIds,
          updatedDocsState: updatedCommentIdsListProvider,
        ),
      ),
    );
  }
}
