import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app.dart';
import 'bloc/detail_chapter_bloc.dart';

@RoutePage()
class DetailChapterPage extends StatefulWidget {
  const DetailChapterPage({
    @PathParam('id') required this.id,
    @PathParam('endpoint') required this.endpoint,
    required this.title,
    super.key,
  });

  final String id;
  final String endpoint;
  final String title;

  @override
  State<DetailChapterPage> createState() => _DetailChapterPageState();
}

class _DetailChapterPageState
    extends BasePageState<DetailChapterPage, DetailChapterBloc> {
  @override
  void initState() {
    bloc.add(
      DetailChapterEvent.started(id: widget.id, endpoint: widget.endpoint),
    );
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<DetailChapterBloc, DetailChapterState>(
          buildWhen: (prev, cur) => prev.model != cur.model,
          builder: (context, state) {
            return Text(state.model?.content ?? '');
          },
        ),
      ),
    );
  }
}
