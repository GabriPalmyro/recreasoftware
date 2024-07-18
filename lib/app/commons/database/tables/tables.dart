import 'package:drift/drift.dart';

@DataClassName('Unidade')
class UnidadesTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 100)();
  TextColumn get enderecoRua => text().nullable()();
  TextColumn get enderecoComplemento => text().nullable()();
  TextColumn get enderecoCEP => text().nullable()();
  TextColumn get enderecoCidade => text().nullable()();
  TextColumn get enderecoEstado => text().nullable()();
}

@DataClassName('Pai')
class PaisTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 100)();
  TextColumn get cpf => text().withLength(min: 11, max: 11)();
  TextColumn get email => text().nullable()();
  TextColumn get telefone => text().nullable()();
  TextColumn get enderecoRua => text().nullable()();
  TextColumn get enderecoComplemento => text().nullable()();
  TextColumn get enderecoCEP => text().nullable()();
  TextColumn get enderecoCidade => text().nullable()();
  TextColumn get enderecoEstado => text().nullable()();
}

@DataClassName('Crianca')
class CriancasTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 100)();
  DateTimeColumn get dataNascimento => dateTime()();
  BoolColumn get pcd => boolean()();
  IntColumn get paiId => integer().customConstraint('REFERENCES pais(id)')();
  IntColumn get unidadeId => integer().customConstraint('REFERENCES unidades(id)')();
}
