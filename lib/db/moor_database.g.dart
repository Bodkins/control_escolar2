// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Student extends DataClass implements Insertable<Student> {
  final int idGroup;
  final String emailStudent;
  final String emailAdvisor;
  final String nameStudent;
  final String nameAdvisor;
  Student(
      {@required this.idGroup,
      @required this.emailStudent,
      @required this.emailAdvisor,
      @required this.nameStudent,
      @required this.nameAdvisor});
  factory Student.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Student(
      idGroup:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_group']),
      emailStudent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_student']),
      emailAdvisor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_advisor']),
      nameStudent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}name_student']),
      nameAdvisor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}name_advisor']),
    );
  }
  factory Student.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Student(
      idGroup: serializer.fromJson<int>(json['idGroup']),
      emailStudent: serializer.fromJson<String>(json['emailStudent']),
      emailAdvisor: serializer.fromJson<String>(json['emailAdvisor']),
      nameStudent: serializer.fromJson<String>(json['nameStudent']),
      nameAdvisor: serializer.fromJson<String>(json['nameAdvisor']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'idGroup': serializer.toJson<int>(idGroup),
      'emailStudent': serializer.toJson<String>(emailStudent),
      'emailAdvisor': serializer.toJson<String>(emailAdvisor),
      'nameStudent': serializer.toJson<String>(nameStudent),
      'nameAdvisor': serializer.toJson<String>(nameAdvisor),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Student>>(bool nullToAbsent) {
    return StudentsCompanion(
      idGroup: idGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(idGroup),
      emailStudent: emailStudent == null && nullToAbsent
          ? const Value.absent()
          : Value(emailStudent),
      emailAdvisor: emailAdvisor == null && nullToAbsent
          ? const Value.absent()
          : Value(emailAdvisor),
      nameStudent: nameStudent == null && nullToAbsent
          ? const Value.absent()
          : Value(nameStudent),
      nameAdvisor: nameAdvisor == null && nullToAbsent
          ? const Value.absent()
          : Value(nameAdvisor),
    ) as T;
  }

  Student copyWith(
          {int idGroup,
          String emailStudent,
          String emailAdvisor,
          String nameStudent,
          String nameAdvisor}) =>
      Student(
        idGroup: idGroup ?? this.idGroup,
        emailStudent: emailStudent ?? this.emailStudent,
        emailAdvisor: emailAdvisor ?? this.emailAdvisor,
        nameStudent: nameStudent ?? this.nameStudent,
        nameAdvisor: nameAdvisor ?? this.nameAdvisor,
      );
  @override
  String toString() {
    return (StringBuffer('Student(')
          ..write('idGroup: $idGroup, ')
          ..write('emailStudent: $emailStudent, ')
          ..write('emailAdvisor: $emailAdvisor, ')
          ..write('nameStudent: $nameStudent, ')
          ..write('nameAdvisor: $nameAdvisor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idGroup.hashCode,
      $mrjc(
          emailStudent.hashCode,
          $mrjc(emailAdvisor.hashCode,
              $mrjc(nameStudent.hashCode, nameAdvisor.hashCode)))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Student &&
          other.idGroup == idGroup &&
          other.emailStudent == emailStudent &&
          other.emailAdvisor == emailAdvisor &&
          other.nameStudent == nameStudent &&
          other.nameAdvisor == nameAdvisor);
}

class StudentsCompanion extends UpdateCompanion<Student> {
  final Value<int> idGroup;
  final Value<String> emailStudent;
  final Value<String> emailAdvisor;
  final Value<String> nameStudent;
  final Value<String> nameAdvisor;
  const StudentsCompanion({
    this.idGroup = const Value.absent(),
    this.emailStudent = const Value.absent(),
    this.emailAdvisor = const Value.absent(),
    this.nameStudent = const Value.absent(),
    this.nameAdvisor = const Value.absent(),
  });
  StudentsCompanion copyWith(
      {Value<int> idGroup,
      Value<String> emailStudent,
      Value<String> emailAdvisor,
      Value<String> nameStudent,
      Value<String> nameAdvisor}) {
    return StudentsCompanion(
      idGroup: idGroup ?? this.idGroup,
      emailStudent: emailStudent ?? this.emailStudent,
      emailAdvisor: emailAdvisor ?? this.emailAdvisor,
      nameStudent: nameStudent ?? this.nameStudent,
      nameAdvisor: nameAdvisor ?? this.nameAdvisor,
    );
  }
}

class $StudentsTable extends Students with TableInfo<$StudentsTable, Student> {
  final GeneratedDatabase _db;
  final String _alias;
  $StudentsTable(this._db, [this._alias]);
  final VerificationMeta _idGroupMeta = const VerificationMeta('idGroup');
  GeneratedIntColumn _idGroup;
  @override
  GeneratedIntColumn get idGroup => _idGroup ??= _constructIdGroup();
  GeneratedIntColumn _constructIdGroup() {
    return GeneratedIntColumn('id_group', $tableName, false,
        $customConstraints: 'NULL REFERENCE Groups(idGroup)');
  }

  final VerificationMeta _emailStudentMeta =
      const VerificationMeta('emailStudent');
  GeneratedTextColumn _emailStudent;
  @override
  GeneratedTextColumn get emailStudent =>
      _emailStudent ??= _constructEmailStudent();
  GeneratedTextColumn _constructEmailStudent() {
    return GeneratedTextColumn('email_student', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _emailAdvisorMeta =
      const VerificationMeta('emailAdvisor');
  GeneratedTextColumn _emailAdvisor;
  @override
  GeneratedTextColumn get emailAdvisor =>
      _emailAdvisor ??= _constructEmailAdvisor();
  GeneratedTextColumn _constructEmailAdvisor() {
    return GeneratedTextColumn('email_advisor', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  final VerificationMeta _nameStudentMeta =
      const VerificationMeta('nameStudent');
  GeneratedTextColumn _nameStudent;
  @override
  GeneratedTextColumn get nameStudent =>
      _nameStudent ??= _constructNameStudent();
  GeneratedTextColumn _constructNameStudent() {
    return GeneratedTextColumn('name_student', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _nameAdvisorMeta =
      const VerificationMeta('nameAdvisor');
  GeneratedTextColumn _nameAdvisor;
  @override
  GeneratedTextColumn get nameAdvisor =>
      _nameAdvisor ??= _constructNameAdvisor();
  GeneratedTextColumn _constructNameAdvisor() {
    return GeneratedTextColumn('name_advisor', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idGroup, emailStudent, emailAdvisor, nameStudent, nameAdvisor];
  @override
  $StudentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'students';
  @override
  final String actualTableName = 'students';
  @override
  VerificationContext validateIntegrity(StudentsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.idGroup.present) {
      context.handle(_idGroupMeta,
          idGroup.isAcceptableValue(d.idGroup.value, _idGroupMeta));
    } else if (idGroup.isRequired && isInserting) {
      context.missing(_idGroupMeta);
    }
    if (d.emailStudent.present) {
      context.handle(
          _emailStudentMeta,
          emailStudent.isAcceptableValue(
              d.emailStudent.value, _emailStudentMeta));
    } else if (emailStudent.isRequired && isInserting) {
      context.missing(_emailStudentMeta);
    }
    if (d.emailAdvisor.present) {
      context.handle(
          _emailAdvisorMeta,
          emailAdvisor.isAcceptableValue(
              d.emailAdvisor.value, _emailAdvisorMeta));
    } else if (emailAdvisor.isRequired && isInserting) {
      context.missing(_emailAdvisorMeta);
    }
    if (d.nameStudent.present) {
      context.handle(_nameStudentMeta,
          nameStudent.isAcceptableValue(d.nameStudent.value, _nameStudentMeta));
    } else if (nameStudent.isRequired && isInserting) {
      context.missing(_nameStudentMeta);
    }
    if (d.nameAdvisor.present) {
      context.handle(_nameAdvisorMeta,
          nameAdvisor.isAcceptableValue(d.nameAdvisor.value, _nameAdvisorMeta));
    } else if (nameAdvisor.isRequired && isInserting) {
      context.missing(_nameAdvisorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Student map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Student.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(StudentsCompanion d) {
    final map = <String, Variable>{};
    if (d.idGroup.present) {
      map['id_group'] = Variable<int, IntType>(d.idGroup.value);
    }
    if (d.emailStudent.present) {
      map['email_student'] = Variable<String, StringType>(d.emailStudent.value);
    }
    if (d.emailAdvisor.present) {
      map['email_advisor'] = Variable<String, StringType>(d.emailAdvisor.value);
    }
    if (d.nameStudent.present) {
      map['name_student'] = Variable<String, StringType>(d.nameStudent.value);
    }
    if (d.nameAdvisor.present) {
      map['name_advisor'] = Variable<String, StringType>(d.nameAdvisor.value);
    }
    return map;
  }

  @override
  $StudentsTable createAlias(String alias) {
    return $StudentsTable(_db, alias);
  }
}

class Group extends DataClass implements Insertable<Group> {
  final int idGroup;
  final String nameGroup;
  final String nameSubject;
  Group({this.idGroup, @required this.nameGroup, @required this.nameSubject});
  factory Group.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Group(
      idGroup:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_group']),
      nameGroup: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}name_group']),
      nameSubject: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}name_subject']),
    );
  }
  factory Group.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Group(
      idGroup: serializer.fromJson<int>(json['idGroup']),
      nameGroup: serializer.fromJson<String>(json['nameGroup']),
      nameSubject: serializer.fromJson<String>(json['nameSubject']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'idGroup': serializer.toJson<int>(idGroup),
      'nameGroup': serializer.toJson<String>(nameGroup),
      'nameSubject': serializer.toJson<String>(nameSubject),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Group>>(bool nullToAbsent) {
    return GroupsCompanion(
      idGroup: idGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(idGroup),
      nameGroup: nameGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(nameGroup),
      nameSubject: nameSubject == null && nullToAbsent
          ? const Value.absent()
          : Value(nameSubject),
    ) as T;
  }

  Group copyWith({int idGroup, String nameGroup, String nameSubject}) => Group(
        idGroup: idGroup ?? this.idGroup,
        nameGroup: nameGroup ?? this.nameGroup,
        nameSubject: nameSubject ?? this.nameSubject,
      );
  @override
  String toString() {
    return (StringBuffer('Group(')
          ..write('idGroup: $idGroup, ')
          ..write('nameGroup: $nameGroup, ')
          ..write('nameSubject: $nameSubject')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idGroup.hashCode, $mrjc(nameGroup.hashCode, nameSubject.hashCode)));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Group &&
          other.idGroup == idGroup &&
          other.nameGroup == nameGroup &&
          other.nameSubject == nameSubject);
}

class GroupsCompanion extends UpdateCompanion<Group> {
  final Value<int> idGroup;
  final Value<String> nameGroup;
  final Value<String> nameSubject;
  const GroupsCompanion({
    this.idGroup = const Value.absent(),
    this.nameGroup = const Value.absent(),
    this.nameSubject = const Value.absent(),
  });
  GroupsCompanion copyWith(
      {Value<int> idGroup,
      Value<String> nameGroup,
      Value<String> nameSubject}) {
    return GroupsCompanion(
      idGroup: idGroup ?? this.idGroup,
      nameGroup: nameGroup ?? this.nameGroup,
      nameSubject: nameSubject ?? this.nameSubject,
    );
  }
}

class $GroupsTable extends Groups with TableInfo<$GroupsTable, Group> {
  final GeneratedDatabase _db;
  final String _alias;
  $GroupsTable(this._db, [this._alias]);
  final VerificationMeta _idGroupMeta = const VerificationMeta('idGroup');
  GeneratedIntColumn _idGroup;
  @override
  GeneratedIntColumn get idGroup => _idGroup ??= _constructIdGroup();
  GeneratedIntColumn _constructIdGroup() {
    return GeneratedIntColumn('id_group', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameGroupMeta = const VerificationMeta('nameGroup');
  GeneratedTextColumn _nameGroup;
  @override
  GeneratedTextColumn get nameGroup => _nameGroup ??= _constructNameGroup();
  GeneratedTextColumn _constructNameGroup() {
    return GeneratedTextColumn(
      'name_group',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameSubjectMeta =
      const VerificationMeta('nameSubject');
  GeneratedTextColumn _nameSubject;
  @override
  GeneratedTextColumn get nameSubject =>
      _nameSubject ??= _constructNameSubject();
  GeneratedTextColumn _constructNameSubject() {
    return GeneratedTextColumn(
      'name_subject',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [idGroup, nameGroup, nameSubject];
  @override
  $GroupsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'groups';
  @override
  final String actualTableName = 'groups';
  @override
  VerificationContext validateIntegrity(GroupsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.idGroup.present) {
      context.handle(_idGroupMeta,
          idGroup.isAcceptableValue(d.idGroup.value, _idGroupMeta));
    } else if (idGroup.isRequired && isInserting) {
      context.missing(_idGroupMeta);
    }
    if (d.nameGroup.present) {
      context.handle(_nameGroupMeta,
          nameGroup.isAcceptableValue(d.nameGroup.value, _nameGroupMeta));
    } else if (nameGroup.isRequired && isInserting) {
      context.missing(_nameGroupMeta);
    }
    if (d.nameSubject.present) {
      context.handle(_nameSubjectMeta,
          nameSubject.isAcceptableValue(d.nameSubject.value, _nameSubjectMeta));
    } else if (nameSubject.isRequired && isInserting) {
      context.missing(_nameSubjectMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idGroup};
  @override
  Group map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Group.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(GroupsCompanion d) {
    final map = <String, Variable>{};
    if (d.idGroup.present) {
      map['id_group'] = Variable<int, IntType>(d.idGroup.value);
    }
    if (d.nameGroup.present) {
      map['name_group'] = Variable<String, StringType>(d.nameGroup.value);
    }
    if (d.nameSubject.present) {
      map['name_subject'] = Variable<String, StringType>(d.nameSubject.value);
    }
    return map;
  }

  @override
  $GroupsTable createAlias(String alias) {
    return $GroupsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $StudentsTable _students;
  $StudentsTable get students => _students ??= $StudentsTable(this);
  $GroupsTable _groups;
  $GroupsTable get groups => _groups ??= $GroupsTable(this);
  @override
  List<TableInfo> get allTables => [students, groups];
}
