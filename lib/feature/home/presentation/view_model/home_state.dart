import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upanetra_test/app/di/di.dart';
import 'package:upanetra_test/feature/Product/presentation/view/products_view.dart';
import 'package:upanetra_test/feature/Product/presentation/view_model/bloc/product_bloc.dart';
import 'package:upanetra_test/feature/order/presentation/view/order_view.dart';
import 'package:upanetra_test/feature/order/presentation/view_model/bloc/order_bloc.dart';

class HomeState extends Equatable {
  final int selectedIndex;
  final List<Widget> views;

  const HomeState({
    required this.selectedIndex,
    required this.views,
  });

  // Initial state
  static HomeState initial() {
    return HomeState(
      selectedIndex: 0,
      views: [
        const Center(
          child: Text('Dashboard'),
        ),
        BlocProvider(
          create: (context) => getIt<ProductBloc>(),
          child: ProductsView(),
        ),
        BlocProvider(
          create: (context) => getIt<OrderBloc>(),
          child: const OrderView(),
        ),
        const Center(
          child: Text('Setting'),
        ),
      ],
    );
  }

  HomeState copyWith({
    int? selectedIndex,
    List<Widget>? views,
  }) {
    return HomeState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      views: views ?? this.views,
    );
  }

  @override
  List<Object?> get props => [selectedIndex, views];
}
