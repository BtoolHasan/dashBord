import 'package:dash_bord_app/features/dash_bord/presentation/views/dashbord_view.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/add_product_body.dart';
import 'package:dash_bord_app/features/dash_bord/presentation/views/widgets/add_store_body.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = 'DashbordView';
  static const kAddStore = 'AddStoreBody';
  static const kAddproduct = 'AddProductBody';

  static final router = GoRouter(
      //initialLocation: kHomeView,

      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashbordView(),
        ),
        GoRoute(
          path: kAddStore,
          builder: (context, state) => const AddStoreBody(),
          // pageBuilder: (context, state) =>
          //     const MaterialPage(child: AddStoreBody()))
        ),
        GoRoute(
          path: kAddStore,
          builder: (context, state) => const AddProductBody(),
        )
      ]);
}
