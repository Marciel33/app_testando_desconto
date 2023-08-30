//import 'package:test/expect.dart';
//import 'package:test/scaffolding.dart';

import 'package:testando_funcao_desconto/testando_funcao_desconto.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcular o valor do produto com  desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test(
      'Calcular o valor do produto com  desconto sem porcentagem passando o valor do produto zerado',
      () {
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcular  o valor do produto com desconto  com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 850);
  });

  test(
    'Calcular  o valor do produto com desconto  zerado com porcentagem',
    () {
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });




}
