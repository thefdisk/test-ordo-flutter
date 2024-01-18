// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_ordo/application/order/loader/order_loader_bloc.dart'
    as _i8;
import 'package:test_ordo/application/promo/loader/promo_loader_bloc.dart'
    as _i5;
import 'package:test_ordo/common/di/auto_route_di.dart' as _i9;
import 'package:test_ordo/domain/order/order.dart' as _i6;
import 'package:test_ordo/insfrastructure/order/data_sources/local_data_provider.dart'
    as _i4;
import 'package:test_ordo/insfrastructure/order/order_repository.dart' as _i7;
import 'package:test_ordo/presentation/routes/app_router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final autoRouteDi = _$AutoRouteDi();
    gh.lazySingleton<_i3.AppRouter>(() => autoRouteDi.appRouter);
    gh.factory<_i4.OrderLocalDataProvider>(() => _i4.OrderLocalDataProvider());
    gh.factory<_i5.PromoLoaderBloc>(() => _i5.PromoLoaderBloc());
    gh.factory<_i6.IOrderRepository>(
        () => _i7.OrderRepository(gh<_i4.OrderLocalDataProvider>()));
    gh.factory<_i8.OrderLoaderBloc>(
        () => _i8.OrderLoaderBloc(gh<_i6.IOrderRepository>()));
    return this;
  }
}

class _$AutoRouteDi extends _i9.AutoRouteDi {}
