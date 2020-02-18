// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$primeiro_numero_binarioAtom =
      Atom(name: '_HomeControllerBase.primeiro_numero_binario');

  @override
  String get primeiro_numero_binario {
    _$primeiro_numero_binarioAtom.context
        .enforceReadPolicy(_$primeiro_numero_binarioAtom);
    _$primeiro_numero_binarioAtom.reportObserved();
    return super.primeiro_numero_binario;
  }

  @override
  set primeiro_numero_binario(String value) {
    _$primeiro_numero_binarioAtom.context.conditionallyRunInAction(() {
      super.primeiro_numero_binario = value;
      _$primeiro_numero_binarioAtom.reportChanged();
    }, _$primeiro_numero_binarioAtom,
        name: '${_$primeiro_numero_binarioAtom.name}_set');
  }

  final _$segundo_numero_binarioAtom =
      Atom(name: '_HomeControllerBase.segundo_numero_binario');

  @override
  String get segundo_numero_binario {
    _$segundo_numero_binarioAtom.context
        .enforceReadPolicy(_$segundo_numero_binarioAtom);
    _$segundo_numero_binarioAtom.reportObserved();
    return super.segundo_numero_binario;
  }

  @override
  set segundo_numero_binario(String value) {
    _$segundo_numero_binarioAtom.context.conditionallyRunInAction(() {
      super.segundo_numero_binario = value;
      _$segundo_numero_binarioAtom.reportChanged();
    }, _$segundo_numero_binarioAtom,
        name: '${_$segundo_numero_binarioAtom.name}_set');
  }

  final _$somaAtom = Atom(name: '_HomeControllerBase.soma');

  @override
  String get soma {
    _$somaAtom.context.enforceReadPolicy(_$somaAtom);
    _$somaAtom.reportObserved();
    return super.soma;
  }

  @override
  set soma(String value) {
    _$somaAtom.context.conditionallyRunInAction(() {
      super.soma = value;
      _$somaAtom.reportChanged();
    }, _$somaAtom, name: '${_$somaAtom.name}_set');
  }

  final _$subtracaoAtom = Atom(name: '_HomeControllerBase.subtracao');

  @override
  String get subtracao {
    _$subtracaoAtom.context.enforceReadPolicy(_$subtracaoAtom);
    _$subtracaoAtom.reportObserved();
    return super.subtracao;
  }

  @override
  set subtracao(String value) {
    _$subtracaoAtom.context.conditionallyRunInAction(() {
      super.subtracao = value;
      _$subtracaoAtom.reportChanged();
    }, _$subtracaoAtom, name: '${_$subtracaoAtom.name}_set');
  }

  final _$divisaoAtom = Atom(name: '_HomeControllerBase.divisao');

  @override
  String get divisao {
    _$divisaoAtom.context.enforceReadPolicy(_$divisaoAtom);
    _$divisaoAtom.reportObserved();
    return super.divisao;
  }

  @override
  set divisao(String value) {
    _$divisaoAtom.context.conditionallyRunInAction(() {
      super.divisao = value;
      _$divisaoAtom.reportChanged();
    }, _$divisaoAtom, name: '${_$divisaoAtom.name}_set');
  }

  final _$multiplicacaoAtom = Atom(name: '_HomeControllerBase.multiplicacao');

  @override
  String get multiplicacao {
    _$multiplicacaoAtom.context.enforceReadPolicy(_$multiplicacaoAtom);
    _$multiplicacaoAtom.reportObserved();
    return super.multiplicacao;
  }

  @override
  set multiplicacao(String value) {
    _$multiplicacaoAtom.context.conditionallyRunInAction(() {
      super.multiplicacao = value;
      _$multiplicacaoAtom.reportChanged();
    }, _$multiplicacaoAtom, name: '${_$multiplicacaoAtom.name}_set');
  }

  final _$restoAtom = Atom(name: '_HomeControllerBase.resto');

  @override
  String get resto {
    _$restoAtom.context.enforceReadPolicy(_$restoAtom);
    _$restoAtom.reportObserved();
    return super.resto;
  }

  @override
  set resto(String value) {
    _$restoAtom.context.conditionallyRunInAction(() {
      super.resto = value;
      _$restoAtom.reportChanged();
    }, _$restoAtom, name: '${_$restoAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setPrimeiroNumeroBinario(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setPrimeiroNumeroBinario(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSegundoNumeroBinario(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setSegundoNumeroBinario(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic calcularOperacoes() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.calcularOperacoes();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
