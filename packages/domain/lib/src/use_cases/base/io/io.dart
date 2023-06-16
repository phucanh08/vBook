import 'pagination.dart';
export 'pagination.dart';

abstract class BasePaginationInput extends BaseInput {
  const BasePaginationInput({required this.page});

  final Page page;
}

abstract class BasePaginationOutput<T>  extends BaseOutput {
  const BasePaginationOutput({
    required this.items,
    required this.hasNext,
  });

  final List<T> items;
  final bool hasNext;
}

abstract class BaseInput {
  const BaseInput();
}

abstract class BaseOutput {
  const BaseOutput();
}

class Output1<T> extends BaseOutput {
  const Output1(this.t);

  final T t;
}

class Output2<T1, T2> extends BaseOutput {
  const Output2(this.t1, this.t2);

  final T1 t1;
  final T2 t2;
}

class Output3<T1, T2, T3> extends BaseOutput {
  const Output3(this.t1, this.t2, this.t3);

  final T1 t1;
  final T2 t2;
  final T3 t3;
}

class Output4<T1, T2, T3, T4> extends BaseOutput {
  const Output4(this.t1, this.t2, this.t3, this.t4);

  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;
}

class Output5<T1, T2, T3, T4, T5> extends BaseOutput {
  const Output5(this.t1, this.t2, this.t3, this.t4, this.t5);

  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;
  final T5 t5;
}

class Output6<T1, T2, T3, T4, T5, T6> extends BaseOutput {
  const Output6(this.t1, this.t2, this.t3, this.t4, this.t5, this.t6);

  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;
  final T5 t5;
  final T6 t6;
}

class Output7<T1, T2, T3, T4, T5, T6, T7> extends BaseOutput {
  const Output7(
    this.t1,
    this.t2,
    this.t3,
    this.t4,
    this.t5,
    this.t6,
    this.t7,
  );

  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;
  final T5 t5;
  final T6 t6;
  final T7 t7;
}

class Output8<T1, T2, T3, T4, T5, T6, T7, T8> extends BaseOutput {
  const Output8(
    this.t1,
    this.t2,
    this.t3,
    this.t4,
    this.t5,
    this.t6,
    this.t7,
    this.t8,
  );

  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;
  final T5 t5;
  final T6 t6;
  final T7 t7;
  final T8 t8;
}

class Output9<T1, T2, T3, T4, T5, T6, T7, T8, T9> extends BaseOutput {
  const Output9(
    this.t1,
    this.t2,
    this.t3,
    this.t4,
    this.t5,
    this.t6,
    this.t7,
    this.t8,
    this.t9,
  );

  final T1 t1;
  final T2 t2;
  final T3 t3;
  final T4 t4;
  final T5 t5;
  final T6 t6;
  final T7 t7;
  final T8 t8;
  final T9 t9;
}
