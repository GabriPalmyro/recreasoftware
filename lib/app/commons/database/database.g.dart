// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UnidadesTableTable extends UnidadesTable
    with TableInfo<$UnidadesTableTable, Unidade> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnidadesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _enderecoRuaMeta =
      const VerificationMeta('enderecoRua');
  @override
  late final GeneratedColumn<String> enderecoRua = GeneratedColumn<String>(
      'endereco_rua', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoComplementoMeta =
      const VerificationMeta('enderecoComplemento');
  @override
  late final GeneratedColumn<String> enderecoComplemento =
      GeneratedColumn<String>('endereco_complemento', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoCEPMeta =
      const VerificationMeta('enderecoCEP');
  @override
  late final GeneratedColumn<String> enderecoCEP = GeneratedColumn<String>(
      'endereco_c_e_p', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoCidadeMeta =
      const VerificationMeta('enderecoCidade');
  @override
  late final GeneratedColumn<String> enderecoCidade = GeneratedColumn<String>(
      'endereco_cidade', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoEstadoMeta =
      const VerificationMeta('enderecoEstado');
  @override
  late final GeneratedColumn<String> enderecoEstado = GeneratedColumn<String>(
      'endereco_estado', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nome,
        enderecoRua,
        enderecoComplemento,
        enderecoCEP,
        enderecoCidade,
        enderecoEstado
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'unidades_table';
  @override
  VerificationContext validateIntegrity(Insertable<Unidade> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('endereco_rua')) {
      context.handle(
          _enderecoRuaMeta,
          enderecoRua.isAcceptableOrUnknown(
              data['endereco_rua']!, _enderecoRuaMeta));
    }
    if (data.containsKey('endereco_complemento')) {
      context.handle(
          _enderecoComplementoMeta,
          enderecoComplemento.isAcceptableOrUnknown(
              data['endereco_complemento']!, _enderecoComplementoMeta));
    }
    if (data.containsKey('endereco_c_e_p')) {
      context.handle(
          _enderecoCEPMeta,
          enderecoCEP.isAcceptableOrUnknown(
              data['endereco_c_e_p']!, _enderecoCEPMeta));
    }
    if (data.containsKey('endereco_cidade')) {
      context.handle(
          _enderecoCidadeMeta,
          enderecoCidade.isAcceptableOrUnknown(
              data['endereco_cidade']!, _enderecoCidadeMeta));
    }
    if (data.containsKey('endereco_estado')) {
      context.handle(
          _enderecoEstadoMeta,
          enderecoEstado.isAcceptableOrUnknown(
              data['endereco_estado']!, _enderecoEstadoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Unidade map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Unidade(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      enderecoRua: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_rua']),
      enderecoComplemento: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}endereco_complemento']),
      enderecoCEP: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_c_e_p']),
      enderecoCidade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_cidade']),
      enderecoEstado: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_estado']),
    );
  }

  @override
  $UnidadesTableTable createAlias(String alias) {
    return $UnidadesTableTable(attachedDatabase, alias);
  }
}

class Unidade extends DataClass implements Insertable<Unidade> {
  final int id;
  final String nome;
  final String? enderecoRua;
  final String? enderecoComplemento;
  final String? enderecoCEP;
  final String? enderecoCidade;
  final String? enderecoEstado;
  const Unidade(
      {required this.id,
      required this.nome,
      this.enderecoRua,
      this.enderecoComplemento,
      this.enderecoCEP,
      this.enderecoCidade,
      this.enderecoEstado});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    if (!nullToAbsent || enderecoRua != null) {
      map['endereco_rua'] = Variable<String>(enderecoRua);
    }
    if (!nullToAbsent || enderecoComplemento != null) {
      map['endereco_complemento'] = Variable<String>(enderecoComplemento);
    }
    if (!nullToAbsent || enderecoCEP != null) {
      map['endereco_c_e_p'] = Variable<String>(enderecoCEP);
    }
    if (!nullToAbsent || enderecoCidade != null) {
      map['endereco_cidade'] = Variable<String>(enderecoCidade);
    }
    if (!nullToAbsent || enderecoEstado != null) {
      map['endereco_estado'] = Variable<String>(enderecoEstado);
    }
    return map;
  }

  UnidadesTableCompanion toCompanion(bool nullToAbsent) {
    return UnidadesTableCompanion(
      id: Value(id),
      nome: Value(nome),
      enderecoRua: enderecoRua == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoRua),
      enderecoComplemento: enderecoComplemento == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoComplemento),
      enderecoCEP: enderecoCEP == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoCEP),
      enderecoCidade: enderecoCidade == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoCidade),
      enderecoEstado: enderecoEstado == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoEstado),
    );
  }

  factory Unidade.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Unidade(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      enderecoRua: serializer.fromJson<String?>(json['enderecoRua']),
      enderecoComplemento:
          serializer.fromJson<String?>(json['enderecoComplemento']),
      enderecoCEP: serializer.fromJson<String?>(json['enderecoCEP']),
      enderecoCidade: serializer.fromJson<String?>(json['enderecoCidade']),
      enderecoEstado: serializer.fromJson<String?>(json['enderecoEstado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'enderecoRua': serializer.toJson<String?>(enderecoRua),
      'enderecoComplemento': serializer.toJson<String?>(enderecoComplemento),
      'enderecoCEP': serializer.toJson<String?>(enderecoCEP),
      'enderecoCidade': serializer.toJson<String?>(enderecoCidade),
      'enderecoEstado': serializer.toJson<String?>(enderecoEstado),
    };
  }

  Unidade copyWith(
          {int? id,
          String? nome,
          Value<String?> enderecoRua = const Value.absent(),
          Value<String?> enderecoComplemento = const Value.absent(),
          Value<String?> enderecoCEP = const Value.absent(),
          Value<String?> enderecoCidade = const Value.absent(),
          Value<String?> enderecoEstado = const Value.absent()}) =>
      Unidade(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        enderecoRua: enderecoRua.present ? enderecoRua.value : this.enderecoRua,
        enderecoComplemento: enderecoComplemento.present
            ? enderecoComplemento.value
            : this.enderecoComplemento,
        enderecoCEP: enderecoCEP.present ? enderecoCEP.value : this.enderecoCEP,
        enderecoCidade:
            enderecoCidade.present ? enderecoCidade.value : this.enderecoCidade,
        enderecoEstado:
            enderecoEstado.present ? enderecoEstado.value : this.enderecoEstado,
      );
  @override
  String toString() {
    return (StringBuffer('Unidade(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('enderecoRua: $enderecoRua, ')
          ..write('enderecoComplemento: $enderecoComplemento, ')
          ..write('enderecoCEP: $enderecoCEP, ')
          ..write('enderecoCidade: $enderecoCidade, ')
          ..write('enderecoEstado: $enderecoEstado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, enderecoRua, enderecoComplemento,
      enderecoCEP, enderecoCidade, enderecoEstado);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Unidade &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.enderecoRua == this.enderecoRua &&
          other.enderecoComplemento == this.enderecoComplemento &&
          other.enderecoCEP == this.enderecoCEP &&
          other.enderecoCidade == this.enderecoCidade &&
          other.enderecoEstado == this.enderecoEstado);
}

class UnidadesTableCompanion extends UpdateCompanion<Unidade> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String?> enderecoRua;
  final Value<String?> enderecoComplemento;
  final Value<String?> enderecoCEP;
  final Value<String?> enderecoCidade;
  final Value<String?> enderecoEstado;
  const UnidadesTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.enderecoRua = const Value.absent(),
    this.enderecoComplemento = const Value.absent(),
    this.enderecoCEP = const Value.absent(),
    this.enderecoCidade = const Value.absent(),
    this.enderecoEstado = const Value.absent(),
  });
  UnidadesTableCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    this.enderecoRua = const Value.absent(),
    this.enderecoComplemento = const Value.absent(),
    this.enderecoCEP = const Value.absent(),
    this.enderecoCidade = const Value.absent(),
    this.enderecoEstado = const Value.absent(),
  }) : nome = Value(nome);
  static Insertable<Unidade> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? enderecoRua,
    Expression<String>? enderecoComplemento,
    Expression<String>? enderecoCEP,
    Expression<String>? enderecoCidade,
    Expression<String>? enderecoEstado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (enderecoRua != null) 'endereco_rua': enderecoRua,
      if (enderecoComplemento != null)
        'endereco_complemento': enderecoComplemento,
      if (enderecoCEP != null) 'endereco_c_e_p': enderecoCEP,
      if (enderecoCidade != null) 'endereco_cidade': enderecoCidade,
      if (enderecoEstado != null) 'endereco_estado': enderecoEstado,
    });
  }

  UnidadesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String?>? enderecoRua,
      Value<String?>? enderecoComplemento,
      Value<String?>? enderecoCEP,
      Value<String?>? enderecoCidade,
      Value<String?>? enderecoEstado}) {
    return UnidadesTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      enderecoRua: enderecoRua ?? this.enderecoRua,
      enderecoComplemento: enderecoComplemento ?? this.enderecoComplemento,
      enderecoCEP: enderecoCEP ?? this.enderecoCEP,
      enderecoCidade: enderecoCidade ?? this.enderecoCidade,
      enderecoEstado: enderecoEstado ?? this.enderecoEstado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (enderecoRua.present) {
      map['endereco_rua'] = Variable<String>(enderecoRua.value);
    }
    if (enderecoComplemento.present) {
      map['endereco_complemento'] = Variable<String>(enderecoComplemento.value);
    }
    if (enderecoCEP.present) {
      map['endereco_c_e_p'] = Variable<String>(enderecoCEP.value);
    }
    if (enderecoCidade.present) {
      map['endereco_cidade'] = Variable<String>(enderecoCidade.value);
    }
    if (enderecoEstado.present) {
      map['endereco_estado'] = Variable<String>(enderecoEstado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UnidadesTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('enderecoRua: $enderecoRua, ')
          ..write('enderecoComplemento: $enderecoComplemento, ')
          ..write('enderecoCEP: $enderecoCEP, ')
          ..write('enderecoCidade: $enderecoCidade, ')
          ..write('enderecoEstado: $enderecoEstado')
          ..write(')'))
        .toString();
  }
}

class $PaisTableTable extends PaisTable with TableInfo<$PaisTableTable, Pai> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaisTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 11, maxTextLength: 11),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _telefoneMeta =
      const VerificationMeta('telefone');
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
      'telefone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoRuaMeta =
      const VerificationMeta('enderecoRua');
  @override
  late final GeneratedColumn<String> enderecoRua = GeneratedColumn<String>(
      'endereco_rua', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoComplementoMeta =
      const VerificationMeta('enderecoComplemento');
  @override
  late final GeneratedColumn<String> enderecoComplemento =
      GeneratedColumn<String>('endereco_complemento', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoCEPMeta =
      const VerificationMeta('enderecoCEP');
  @override
  late final GeneratedColumn<String> enderecoCEP = GeneratedColumn<String>(
      'endereco_c_e_p', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoCidadeMeta =
      const VerificationMeta('enderecoCidade');
  @override
  late final GeneratedColumn<String> enderecoCidade = GeneratedColumn<String>(
      'endereco_cidade', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _enderecoEstadoMeta =
      const VerificationMeta('enderecoEstado');
  @override
  late final GeneratedColumn<String> enderecoEstado = GeneratedColumn<String>(
      'endereco_estado', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nome,
        cpf,
        email,
        telefone,
        enderecoRua,
        enderecoComplemento,
        enderecoCEP,
        enderecoCidade,
        enderecoEstado
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pais_table';
  @override
  VerificationContext validateIntegrity(Insertable<Pai> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('telefone')) {
      context.handle(_telefoneMeta,
          telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta));
    }
    if (data.containsKey('endereco_rua')) {
      context.handle(
          _enderecoRuaMeta,
          enderecoRua.isAcceptableOrUnknown(
              data['endereco_rua']!, _enderecoRuaMeta));
    }
    if (data.containsKey('endereco_complemento')) {
      context.handle(
          _enderecoComplementoMeta,
          enderecoComplemento.isAcceptableOrUnknown(
              data['endereco_complemento']!, _enderecoComplementoMeta));
    }
    if (data.containsKey('endereco_c_e_p')) {
      context.handle(
          _enderecoCEPMeta,
          enderecoCEP.isAcceptableOrUnknown(
              data['endereco_c_e_p']!, _enderecoCEPMeta));
    }
    if (data.containsKey('endereco_cidade')) {
      context.handle(
          _enderecoCidadeMeta,
          enderecoCidade.isAcceptableOrUnknown(
              data['endereco_cidade']!, _enderecoCidadeMeta));
    }
    if (data.containsKey('endereco_estado')) {
      context.handle(
          _enderecoEstadoMeta,
          enderecoEstado.isAcceptableOrUnknown(
              data['endereco_estado']!, _enderecoEstadoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Pai map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Pai(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      telefone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telefone']),
      enderecoRua: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_rua']),
      enderecoComplemento: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}endereco_complemento']),
      enderecoCEP: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_c_e_p']),
      enderecoCidade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_cidade']),
      enderecoEstado: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}endereco_estado']),
    );
  }

  @override
  $PaisTableTable createAlias(String alias) {
    return $PaisTableTable(attachedDatabase, alias);
  }
}

class Pai extends DataClass implements Insertable<Pai> {
  final int id;
  final String nome;
  final String cpf;
  final String? email;
  final String? telefone;
  final String? enderecoRua;
  final String? enderecoComplemento;
  final String? enderecoCEP;
  final String? enderecoCidade;
  final String? enderecoEstado;
  const Pai(
      {required this.id,
      required this.nome,
      required this.cpf,
      this.email,
      this.telefone,
      this.enderecoRua,
      this.enderecoComplemento,
      this.enderecoCEP,
      this.enderecoCidade,
      this.enderecoEstado});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['cpf'] = Variable<String>(cpf);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || telefone != null) {
      map['telefone'] = Variable<String>(telefone);
    }
    if (!nullToAbsent || enderecoRua != null) {
      map['endereco_rua'] = Variable<String>(enderecoRua);
    }
    if (!nullToAbsent || enderecoComplemento != null) {
      map['endereco_complemento'] = Variable<String>(enderecoComplemento);
    }
    if (!nullToAbsent || enderecoCEP != null) {
      map['endereco_c_e_p'] = Variable<String>(enderecoCEP);
    }
    if (!nullToAbsent || enderecoCidade != null) {
      map['endereco_cidade'] = Variable<String>(enderecoCidade);
    }
    if (!nullToAbsent || enderecoEstado != null) {
      map['endereco_estado'] = Variable<String>(enderecoEstado);
    }
    return map;
  }

  PaisTableCompanion toCompanion(bool nullToAbsent) {
    return PaisTableCompanion(
      id: Value(id),
      nome: Value(nome),
      cpf: Value(cpf),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      telefone: telefone == null && nullToAbsent
          ? const Value.absent()
          : Value(telefone),
      enderecoRua: enderecoRua == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoRua),
      enderecoComplemento: enderecoComplemento == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoComplemento),
      enderecoCEP: enderecoCEP == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoCEP),
      enderecoCidade: enderecoCidade == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoCidade),
      enderecoEstado: enderecoEstado == null && nullToAbsent
          ? const Value.absent()
          : Value(enderecoEstado),
    );
  }

  factory Pai.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Pai(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      cpf: serializer.fromJson<String>(json['cpf']),
      email: serializer.fromJson<String?>(json['email']),
      telefone: serializer.fromJson<String?>(json['telefone']),
      enderecoRua: serializer.fromJson<String?>(json['enderecoRua']),
      enderecoComplemento:
          serializer.fromJson<String?>(json['enderecoComplemento']),
      enderecoCEP: serializer.fromJson<String?>(json['enderecoCEP']),
      enderecoCidade: serializer.fromJson<String?>(json['enderecoCidade']),
      enderecoEstado: serializer.fromJson<String?>(json['enderecoEstado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'cpf': serializer.toJson<String>(cpf),
      'email': serializer.toJson<String?>(email),
      'telefone': serializer.toJson<String?>(telefone),
      'enderecoRua': serializer.toJson<String?>(enderecoRua),
      'enderecoComplemento': serializer.toJson<String?>(enderecoComplemento),
      'enderecoCEP': serializer.toJson<String?>(enderecoCEP),
      'enderecoCidade': serializer.toJson<String?>(enderecoCidade),
      'enderecoEstado': serializer.toJson<String?>(enderecoEstado),
    };
  }

  Pai copyWith(
          {int? id,
          String? nome,
          String? cpf,
          Value<String?> email = const Value.absent(),
          Value<String?> telefone = const Value.absent(),
          Value<String?> enderecoRua = const Value.absent(),
          Value<String?> enderecoComplemento = const Value.absent(),
          Value<String?> enderecoCEP = const Value.absent(),
          Value<String?> enderecoCidade = const Value.absent(),
          Value<String?> enderecoEstado = const Value.absent()}) =>
      Pai(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        cpf: cpf ?? this.cpf,
        email: email.present ? email.value : this.email,
        telefone: telefone.present ? telefone.value : this.telefone,
        enderecoRua: enderecoRua.present ? enderecoRua.value : this.enderecoRua,
        enderecoComplemento: enderecoComplemento.present
            ? enderecoComplemento.value
            : this.enderecoComplemento,
        enderecoCEP: enderecoCEP.present ? enderecoCEP.value : this.enderecoCEP,
        enderecoCidade:
            enderecoCidade.present ? enderecoCidade.value : this.enderecoCidade,
        enderecoEstado:
            enderecoEstado.present ? enderecoEstado.value : this.enderecoEstado,
      );
  @override
  String toString() {
    return (StringBuffer('Pai(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cpf: $cpf, ')
          ..write('email: $email, ')
          ..write('telefone: $telefone, ')
          ..write('enderecoRua: $enderecoRua, ')
          ..write('enderecoComplemento: $enderecoComplemento, ')
          ..write('enderecoCEP: $enderecoCEP, ')
          ..write('enderecoCidade: $enderecoCidade, ')
          ..write('enderecoEstado: $enderecoEstado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, cpf, email, telefone, enderecoRua,
      enderecoComplemento, enderecoCEP, enderecoCidade, enderecoEstado);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Pai &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.cpf == this.cpf &&
          other.email == this.email &&
          other.telefone == this.telefone &&
          other.enderecoRua == this.enderecoRua &&
          other.enderecoComplemento == this.enderecoComplemento &&
          other.enderecoCEP == this.enderecoCEP &&
          other.enderecoCidade == this.enderecoCidade &&
          other.enderecoEstado == this.enderecoEstado);
}

class PaisTableCompanion extends UpdateCompanion<Pai> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> cpf;
  final Value<String?> email;
  final Value<String?> telefone;
  final Value<String?> enderecoRua;
  final Value<String?> enderecoComplemento;
  final Value<String?> enderecoCEP;
  final Value<String?> enderecoCidade;
  final Value<String?> enderecoEstado;
  const PaisTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.cpf = const Value.absent(),
    this.email = const Value.absent(),
    this.telefone = const Value.absent(),
    this.enderecoRua = const Value.absent(),
    this.enderecoComplemento = const Value.absent(),
    this.enderecoCEP = const Value.absent(),
    this.enderecoCidade = const Value.absent(),
    this.enderecoEstado = const Value.absent(),
  });
  PaisTableCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String cpf,
    this.email = const Value.absent(),
    this.telefone = const Value.absent(),
    this.enderecoRua = const Value.absent(),
    this.enderecoComplemento = const Value.absent(),
    this.enderecoCEP = const Value.absent(),
    this.enderecoCidade = const Value.absent(),
    this.enderecoEstado = const Value.absent(),
  })  : nome = Value(nome),
        cpf = Value(cpf);
  static Insertable<Pai> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? cpf,
    Expression<String>? email,
    Expression<String>? telefone,
    Expression<String>? enderecoRua,
    Expression<String>? enderecoComplemento,
    Expression<String>? enderecoCEP,
    Expression<String>? enderecoCidade,
    Expression<String>? enderecoEstado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (cpf != null) 'cpf': cpf,
      if (email != null) 'email': email,
      if (telefone != null) 'telefone': telefone,
      if (enderecoRua != null) 'endereco_rua': enderecoRua,
      if (enderecoComplemento != null)
        'endereco_complemento': enderecoComplemento,
      if (enderecoCEP != null) 'endereco_c_e_p': enderecoCEP,
      if (enderecoCidade != null) 'endereco_cidade': enderecoCidade,
      if (enderecoEstado != null) 'endereco_estado': enderecoEstado,
    });
  }

  PaisTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String>? cpf,
      Value<String?>? email,
      Value<String?>? telefone,
      Value<String?>? enderecoRua,
      Value<String?>? enderecoComplemento,
      Value<String?>? enderecoCEP,
      Value<String?>? enderecoCidade,
      Value<String?>? enderecoEstado}) {
    return PaisTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      email: email ?? this.email,
      telefone: telefone ?? this.telefone,
      enderecoRua: enderecoRua ?? this.enderecoRua,
      enderecoComplemento: enderecoComplemento ?? this.enderecoComplemento,
      enderecoCEP: enderecoCEP ?? this.enderecoCEP,
      enderecoCidade: enderecoCidade ?? this.enderecoCidade,
      enderecoEstado: enderecoEstado ?? this.enderecoEstado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (enderecoRua.present) {
      map['endereco_rua'] = Variable<String>(enderecoRua.value);
    }
    if (enderecoComplemento.present) {
      map['endereco_complemento'] = Variable<String>(enderecoComplemento.value);
    }
    if (enderecoCEP.present) {
      map['endereco_c_e_p'] = Variable<String>(enderecoCEP.value);
    }
    if (enderecoCidade.present) {
      map['endereco_cidade'] = Variable<String>(enderecoCidade.value);
    }
    if (enderecoEstado.present) {
      map['endereco_estado'] = Variable<String>(enderecoEstado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaisTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cpf: $cpf, ')
          ..write('email: $email, ')
          ..write('telefone: $telefone, ')
          ..write('enderecoRua: $enderecoRua, ')
          ..write('enderecoComplemento: $enderecoComplemento, ')
          ..write('enderecoCEP: $enderecoCEP, ')
          ..write('enderecoCidade: $enderecoCidade, ')
          ..write('enderecoEstado: $enderecoEstado')
          ..write(')'))
        .toString();
  }
}

class $CriancasTableTable extends CriancasTable
    with TableInfo<$CriancasTableTable, Crianca> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CriancasTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _dataNascimentoMeta =
      const VerificationMeta('dataNascimento');
  @override
  late final GeneratedColumn<DateTime> dataNascimento =
      GeneratedColumn<DateTime>('data_nascimento', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _pcdMeta = const VerificationMeta('pcd');
  @override
  late final GeneratedColumn<bool> pcd = GeneratedColumn<bool>(
      'pcd', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("pcd" IN (0, 1))'));
  static const VerificationMeta _paiIdMeta = const VerificationMeta('paiId');
  @override
  late final GeneratedColumn<int> paiId = GeneratedColumn<int>(
      'pai_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES pais(id)');
  static const VerificationMeta _unidadeIdMeta =
      const VerificationMeta('unidadeId');
  @override
  late final GeneratedColumn<int> unidadeId = GeneratedColumn<int>(
      'unidade_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES unidades(id)');
  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, dataNascimento, pcd, paiId, unidadeId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'criancas_table';
  @override
  VerificationContext validateIntegrity(Insertable<Crianca> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('data_nascimento')) {
      context.handle(
          _dataNascimentoMeta,
          dataNascimento.isAcceptableOrUnknown(
              data['data_nascimento']!, _dataNascimentoMeta));
    } else if (isInserting) {
      context.missing(_dataNascimentoMeta);
    }
    if (data.containsKey('pcd')) {
      context.handle(
          _pcdMeta, pcd.isAcceptableOrUnknown(data['pcd']!, _pcdMeta));
    } else if (isInserting) {
      context.missing(_pcdMeta);
    }
    if (data.containsKey('pai_id')) {
      context.handle(
          _paiIdMeta, paiId.isAcceptableOrUnknown(data['pai_id']!, _paiIdMeta));
    } else if (isInserting) {
      context.missing(_paiIdMeta);
    }
    if (data.containsKey('unidade_id')) {
      context.handle(_unidadeIdMeta,
          unidadeId.isAcceptableOrUnknown(data['unidade_id']!, _unidadeIdMeta));
    } else if (isInserting) {
      context.missing(_unidadeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Crianca map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Crianca(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      dataNascimento: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}data_nascimento'])!,
      pcd: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}pcd'])!,
      paiId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pai_id'])!,
      unidadeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unidade_id'])!,
    );
  }

  @override
  $CriancasTableTable createAlias(String alias) {
    return $CriancasTableTable(attachedDatabase, alias);
  }
}

class Crianca extends DataClass implements Insertable<Crianca> {
  final int id;
  final String nome;
  final DateTime dataNascimento;
  final bool pcd;
  final int paiId;
  final int unidadeId;
  const Crianca(
      {required this.id,
      required this.nome,
      required this.dataNascimento,
      required this.pcd,
      required this.paiId,
      required this.unidadeId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['data_nascimento'] = Variable<DateTime>(dataNascimento);
    map['pcd'] = Variable<bool>(pcd);
    map['pai_id'] = Variable<int>(paiId);
    map['unidade_id'] = Variable<int>(unidadeId);
    return map;
  }

  CriancasTableCompanion toCompanion(bool nullToAbsent) {
    return CriancasTableCompanion(
      id: Value(id),
      nome: Value(nome),
      dataNascimento: Value(dataNascimento),
      pcd: Value(pcd),
      paiId: Value(paiId),
      unidadeId: Value(unidadeId),
    );
  }

  factory Crianca.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Crianca(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      dataNascimento: serializer.fromJson<DateTime>(json['dataNascimento']),
      pcd: serializer.fromJson<bool>(json['pcd']),
      paiId: serializer.fromJson<int>(json['paiId']),
      unidadeId: serializer.fromJson<int>(json['unidadeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'dataNascimento': serializer.toJson<DateTime>(dataNascimento),
      'pcd': serializer.toJson<bool>(pcd),
      'paiId': serializer.toJson<int>(paiId),
      'unidadeId': serializer.toJson<int>(unidadeId),
    };
  }

  Crianca copyWith(
          {int? id,
          String? nome,
          DateTime? dataNascimento,
          bool? pcd,
          int? paiId,
          int? unidadeId}) =>
      Crianca(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        dataNascimento: dataNascimento ?? this.dataNascimento,
        pcd: pcd ?? this.pcd,
        paiId: paiId ?? this.paiId,
        unidadeId: unidadeId ?? this.unidadeId,
      );
  @override
  String toString() {
    return (StringBuffer('Crianca(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('dataNascimento: $dataNascimento, ')
          ..write('pcd: $pcd, ')
          ..write('paiId: $paiId, ')
          ..write('unidadeId: $unidadeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nome, dataNascimento, pcd, paiId, unidadeId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Crianca &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.dataNascimento == this.dataNascimento &&
          other.pcd == this.pcd &&
          other.paiId == this.paiId &&
          other.unidadeId == this.unidadeId);
}

class CriancasTableCompanion extends UpdateCompanion<Crianca> {
  final Value<int> id;
  final Value<String> nome;
  final Value<DateTime> dataNascimento;
  final Value<bool> pcd;
  final Value<int> paiId;
  final Value<int> unidadeId;
  const CriancasTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.dataNascimento = const Value.absent(),
    this.pcd = const Value.absent(),
    this.paiId = const Value.absent(),
    this.unidadeId = const Value.absent(),
  });
  CriancasTableCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required DateTime dataNascimento,
    required bool pcd,
    required int paiId,
    required int unidadeId,
  })  : nome = Value(nome),
        dataNascimento = Value(dataNascimento),
        pcd = Value(pcd),
        paiId = Value(paiId),
        unidadeId = Value(unidadeId);
  static Insertable<Crianca> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<DateTime>? dataNascimento,
    Expression<bool>? pcd,
    Expression<int>? paiId,
    Expression<int>? unidadeId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (dataNascimento != null) 'data_nascimento': dataNascimento,
      if (pcd != null) 'pcd': pcd,
      if (paiId != null) 'pai_id': paiId,
      if (unidadeId != null) 'unidade_id': unidadeId,
    });
  }

  CriancasTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<DateTime>? dataNascimento,
      Value<bool>? pcd,
      Value<int>? paiId,
      Value<int>? unidadeId}) {
    return CriancasTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      dataNascimento: dataNascimento ?? this.dataNascimento,
      pcd: pcd ?? this.pcd,
      paiId: paiId ?? this.paiId,
      unidadeId: unidadeId ?? this.unidadeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (dataNascimento.present) {
      map['data_nascimento'] = Variable<DateTime>(dataNascimento.value);
    }
    if (pcd.present) {
      map['pcd'] = Variable<bool>(pcd.value);
    }
    if (paiId.present) {
      map['pai_id'] = Variable<int>(paiId.value);
    }
    if (unidadeId.present) {
      map['unidade_id'] = Variable<int>(unidadeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CriancasTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('dataNascimento: $dataNascimento, ')
          ..write('pcd: $pcd, ')
          ..write('paiId: $paiId, ')
          ..write('unidadeId: $unidadeId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $UnidadesTableTable unidadesTable = $UnidadesTableTable(this);
  late final $PaisTableTable paisTable = $PaisTableTable(this);
  late final $CriancasTableTable criancasTable = $CriancasTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [unidadesTable, paisTable, criancasTable];
}

typedef $$UnidadesTableTableInsertCompanionBuilder = UnidadesTableCompanion
    Function({
  Value<int> id,
  required String nome,
  Value<String?> enderecoRua,
  Value<String?> enderecoComplemento,
  Value<String?> enderecoCEP,
  Value<String?> enderecoCidade,
  Value<String?> enderecoEstado,
});
typedef $$UnidadesTableTableUpdateCompanionBuilder = UnidadesTableCompanion
    Function({
  Value<int> id,
  Value<String> nome,
  Value<String?> enderecoRua,
  Value<String?> enderecoComplemento,
  Value<String?> enderecoCEP,
  Value<String?> enderecoCidade,
  Value<String?> enderecoEstado,
});

class $$UnidadesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UnidadesTableTable,
    Unidade,
    $$UnidadesTableTableFilterComposer,
    $$UnidadesTableTableOrderingComposer,
    $$UnidadesTableTableProcessedTableManager,
    $$UnidadesTableTableInsertCompanionBuilder,
    $$UnidadesTableTableUpdateCompanionBuilder> {
  $$UnidadesTableTableTableManager(_$AppDatabase db, $UnidadesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UnidadesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UnidadesTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$UnidadesTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String?> enderecoRua = const Value.absent(),
            Value<String?> enderecoComplemento = const Value.absent(),
            Value<String?> enderecoCEP = const Value.absent(),
            Value<String?> enderecoCidade = const Value.absent(),
            Value<String?> enderecoEstado = const Value.absent(),
          }) =>
              UnidadesTableCompanion(
            id: id,
            nome: nome,
            enderecoRua: enderecoRua,
            enderecoComplemento: enderecoComplemento,
            enderecoCEP: enderecoCEP,
            enderecoCidade: enderecoCidade,
            enderecoEstado: enderecoEstado,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String nome,
            Value<String?> enderecoRua = const Value.absent(),
            Value<String?> enderecoComplemento = const Value.absent(),
            Value<String?> enderecoCEP = const Value.absent(),
            Value<String?> enderecoCidade = const Value.absent(),
            Value<String?> enderecoEstado = const Value.absent(),
          }) =>
              UnidadesTableCompanion.insert(
            id: id,
            nome: nome,
            enderecoRua: enderecoRua,
            enderecoComplemento: enderecoComplemento,
            enderecoCEP: enderecoCEP,
            enderecoCidade: enderecoCidade,
            enderecoEstado: enderecoEstado,
          ),
        ));
}

class $$UnidadesTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $UnidadesTableTable,
    Unidade,
    $$UnidadesTableTableFilterComposer,
    $$UnidadesTableTableOrderingComposer,
    $$UnidadesTableTableProcessedTableManager,
    $$UnidadesTableTableInsertCompanionBuilder,
    $$UnidadesTableTableUpdateCompanionBuilder> {
  $$UnidadesTableTableProcessedTableManager(super.$state);
}

class $$UnidadesTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UnidadesTableTable> {
  $$UnidadesTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoRua => $state.composableBuilder(
      column: $state.table.enderecoRua,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoComplemento => $state.composableBuilder(
      column: $state.table.enderecoComplemento,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoCEP => $state.composableBuilder(
      column: $state.table.enderecoCEP,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoCidade => $state.composableBuilder(
      column: $state.table.enderecoCidade,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoEstado => $state.composableBuilder(
      column: $state.table.enderecoEstado,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UnidadesTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UnidadesTableTable> {
  $$UnidadesTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoRua => $state.composableBuilder(
      column: $state.table.enderecoRua,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoComplemento => $state.composableBuilder(
      column: $state.table.enderecoComplemento,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoCEP => $state.composableBuilder(
      column: $state.table.enderecoCEP,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoCidade => $state.composableBuilder(
      column: $state.table.enderecoCidade,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoEstado => $state.composableBuilder(
      column: $state.table.enderecoEstado,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$PaisTableTableInsertCompanionBuilder = PaisTableCompanion Function({
  Value<int> id,
  required String nome,
  required String cpf,
  Value<String?> email,
  Value<String?> telefone,
  Value<String?> enderecoRua,
  Value<String?> enderecoComplemento,
  Value<String?> enderecoCEP,
  Value<String?> enderecoCidade,
  Value<String?> enderecoEstado,
});
typedef $$PaisTableTableUpdateCompanionBuilder = PaisTableCompanion Function({
  Value<int> id,
  Value<String> nome,
  Value<String> cpf,
  Value<String?> email,
  Value<String?> telefone,
  Value<String?> enderecoRua,
  Value<String?> enderecoComplemento,
  Value<String?> enderecoCEP,
  Value<String?> enderecoCidade,
  Value<String?> enderecoEstado,
});

class $$PaisTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PaisTableTable,
    Pai,
    $$PaisTableTableFilterComposer,
    $$PaisTableTableOrderingComposer,
    $$PaisTableTableProcessedTableManager,
    $$PaisTableTableInsertCompanionBuilder,
    $$PaisTableTableUpdateCompanionBuilder> {
  $$PaisTableTableTableManager(_$AppDatabase db, $PaisTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PaisTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PaisTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$PaisTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> cpf = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> telefone = const Value.absent(),
            Value<String?> enderecoRua = const Value.absent(),
            Value<String?> enderecoComplemento = const Value.absent(),
            Value<String?> enderecoCEP = const Value.absent(),
            Value<String?> enderecoCidade = const Value.absent(),
            Value<String?> enderecoEstado = const Value.absent(),
          }) =>
              PaisTableCompanion(
            id: id,
            nome: nome,
            cpf: cpf,
            email: email,
            telefone: telefone,
            enderecoRua: enderecoRua,
            enderecoComplemento: enderecoComplemento,
            enderecoCEP: enderecoCEP,
            enderecoCidade: enderecoCidade,
            enderecoEstado: enderecoEstado,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required String cpf,
            Value<String?> email = const Value.absent(),
            Value<String?> telefone = const Value.absent(),
            Value<String?> enderecoRua = const Value.absent(),
            Value<String?> enderecoComplemento = const Value.absent(),
            Value<String?> enderecoCEP = const Value.absent(),
            Value<String?> enderecoCidade = const Value.absent(),
            Value<String?> enderecoEstado = const Value.absent(),
          }) =>
              PaisTableCompanion.insert(
            id: id,
            nome: nome,
            cpf: cpf,
            email: email,
            telefone: telefone,
            enderecoRua: enderecoRua,
            enderecoComplemento: enderecoComplemento,
            enderecoCEP: enderecoCEP,
            enderecoCidade: enderecoCidade,
            enderecoEstado: enderecoEstado,
          ),
        ));
}

class $$PaisTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $PaisTableTable,
    Pai,
    $$PaisTableTableFilterComposer,
    $$PaisTableTableOrderingComposer,
    $$PaisTableTableProcessedTableManager,
    $$PaisTableTableInsertCompanionBuilder,
    $$PaisTableTableUpdateCompanionBuilder> {
  $$PaisTableTableProcessedTableManager(super.$state);
}

class $$PaisTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PaisTableTable> {
  $$PaisTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get cpf => $state.composableBuilder(
      column: $state.table.cpf,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get telefone => $state.composableBuilder(
      column: $state.table.telefone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoRua => $state.composableBuilder(
      column: $state.table.enderecoRua,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoComplemento => $state.composableBuilder(
      column: $state.table.enderecoComplemento,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoCEP => $state.composableBuilder(
      column: $state.table.enderecoCEP,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoCidade => $state.composableBuilder(
      column: $state.table.enderecoCidade,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enderecoEstado => $state.composableBuilder(
      column: $state.table.enderecoEstado,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PaisTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PaisTableTable> {
  $$PaisTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get cpf => $state.composableBuilder(
      column: $state.table.cpf,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get telefone => $state.composableBuilder(
      column: $state.table.telefone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoRua => $state.composableBuilder(
      column: $state.table.enderecoRua,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoComplemento => $state.composableBuilder(
      column: $state.table.enderecoComplemento,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoCEP => $state.composableBuilder(
      column: $state.table.enderecoCEP,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoCidade => $state.composableBuilder(
      column: $state.table.enderecoCidade,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enderecoEstado => $state.composableBuilder(
      column: $state.table.enderecoEstado,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CriancasTableTableInsertCompanionBuilder = CriancasTableCompanion
    Function({
  Value<int> id,
  required String nome,
  required DateTime dataNascimento,
  required bool pcd,
  required int paiId,
  required int unidadeId,
});
typedef $$CriancasTableTableUpdateCompanionBuilder = CriancasTableCompanion
    Function({
  Value<int> id,
  Value<String> nome,
  Value<DateTime> dataNascimento,
  Value<bool> pcd,
  Value<int> paiId,
  Value<int> unidadeId,
});

class $$CriancasTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CriancasTableTable,
    Crianca,
    $$CriancasTableTableFilterComposer,
    $$CriancasTableTableOrderingComposer,
    $$CriancasTableTableProcessedTableManager,
    $$CriancasTableTableInsertCompanionBuilder,
    $$CriancasTableTableUpdateCompanionBuilder> {
  $$CriancasTableTableTableManager(_$AppDatabase db, $CriancasTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CriancasTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CriancasTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$CriancasTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<DateTime> dataNascimento = const Value.absent(),
            Value<bool> pcd = const Value.absent(),
            Value<int> paiId = const Value.absent(),
            Value<int> unidadeId = const Value.absent(),
          }) =>
              CriancasTableCompanion(
            id: id,
            nome: nome,
            dataNascimento: dataNascimento,
            pcd: pcd,
            paiId: paiId,
            unidadeId: unidadeId,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required DateTime dataNascimento,
            required bool pcd,
            required int paiId,
            required int unidadeId,
          }) =>
              CriancasTableCompanion.insert(
            id: id,
            nome: nome,
            dataNascimento: dataNascimento,
            pcd: pcd,
            paiId: paiId,
            unidadeId: unidadeId,
          ),
        ));
}

class $$CriancasTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $CriancasTableTable,
    Crianca,
    $$CriancasTableTableFilterComposer,
    $$CriancasTableTableOrderingComposer,
    $$CriancasTableTableProcessedTableManager,
    $$CriancasTableTableInsertCompanionBuilder,
    $$CriancasTableTableUpdateCompanionBuilder> {
  $$CriancasTableTableProcessedTableManager(super.$state);
}

class $$CriancasTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CriancasTableTable> {
  $$CriancasTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dataNascimento => $state.composableBuilder(
      column: $state.table.dataNascimento,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get pcd => $state.composableBuilder(
      column: $state.table.pcd,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get paiId => $state.composableBuilder(
      column: $state.table.paiId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get unidadeId => $state.composableBuilder(
      column: $state.table.unidadeId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CriancasTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CriancasTableTable> {
  $$CriancasTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dataNascimento => $state.composableBuilder(
      column: $state.table.dataNascimento,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get pcd => $state.composableBuilder(
      column: $state.table.pcd,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get paiId => $state.composableBuilder(
      column: $state.table.paiId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get unidadeId => $state.composableBuilder(
      column: $state.table.unidadeId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$UnidadesTableTableTableManager get unidadesTable =>
      $$UnidadesTableTableTableManager(_db, _db.unidadesTable);
  $$PaisTableTableTableManager get paisTable =>
      $$PaisTableTableTableManager(_db, _db.paisTable);
  $$CriancasTableTableTableManager get criancasTable =>
      $$CriancasTableTableTableManager(_db, _db.criancasTable);
}
