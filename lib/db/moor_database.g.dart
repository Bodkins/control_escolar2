// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

<<<<<<< Updated upstream
// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
=======
// ignore_for_file: unnecessary_brace_in_string_interps
>>>>>>> Stashed changes
class Student extends DataClass implements Insertable<Student> {
  final int idStudent;
  final String emailStudent;
  final String emailAdvisor;
  final String nameStudent;
  final String nameAdvisor;
  final int calif;
  final int idGroupStudent;
  Student(
      {this.idStudent,
      @required this.emailStudent,
      @required this.emailAdvisor,
      @required this.nameStudent,
      @required this.nameAdvisor,
      @required this.calif,
      @required this.idGroupStudent});
  factory Student.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Student(
      idStudent:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_student']),
      emailStudent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_student']),
      emailAdvisor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_advisor']),
      nameStudent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}name_student']),
      nameAdvisor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}name_advisor']),
      calif: intType.mapFromDatabaseResponse(data['${effectivePrefix}calif']),
      idGroupStudent: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_group_student']),
    );
  }
  factory Student.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Student(
      idStudent: serializer.fromJson<int>(json['idStudent']),
      emailStudent: serializer.fromJson<String>(json['emailStudent']),
      emailAdvisor: serializer.fromJson<String>(json['emailAdvisor']),
      nameStudent: serializer.fromJson<String>(json['nameStudent']),
      nameAdvisor: serializer.fromJson<String>(json['nameAdvisor']),
      calif: serializer.fromJson<int>(json['calif']),
      idGroupStudent: serializer.fromJson<int>(json['idGroupStudent']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'idStudent': serializer.toJson<int>(idStudent),
      'emailStudent': serializer.toJson<String>(emailStudent),
      'emailAdvisor': serializer.toJson<String>(emailAdvisor),
      'nameStudent': serializer.toJson<String>(nameStudent),
      'nameAdvisor': serializer.toJson<String>(nameAdvisor),
      'calif': serializer.toJson<int>(calif),
      'idGroupStudent': serializer.toJson<int>(idGroupStudent),
    };
  }

  @override
<<<<<<< Updated upstream
  StudentsCompanion createCompanion(bool nullToAbsent) {
=======
  T createCompanion<T extends UpdateCompanion<Student>>(bool nullToAbsent) {
>>>>>>> Stashed changes
    return StudentsCompanion(
      idStudent: idStudent == null && nullToAbsent
          ? const Value.absent()
          : Value(idStudent),
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
      calif:
          calif == null && nullToAbsent ? const Value.absent() : Value(calif),
      idGroupStudent: idGroupStudent == null && nullToAbsent
          ? const Value.absent()
          : Value(idGroupStudent),
<<<<<<< Updated upstream
    );
=======
    ) as T;
>>>>>>> Stashed changes
  }

  Student copyWith(
          {int idStudent,
          String emailStudent,
          String emailAdvisor,
          String nameStudent,
          String nameAdvisor,
          int calif,
          int idGroupStudent}) =>
      Student(
        idStudent: idStudent ?? this.idStudent,
        emailStudent: emailStudent ?? this.emailStudent,
        emailAdvisor: emailAdvisor ?? this.emailAdvisor,
        nameStudent: nameStudent ?? this.nameStudent,
        nameAdvisor: nameAdvisor ?? this.nameAdvisor,
        calif: calif ?? this.calif,
        idGroupStudent: idGroupStudent ?? this.idGroupStudent,
      );
  @override
  String toString() {
    return (StringBuffer('Student(')
          ..write('idStudent: $idStudent, ')
          ..write('emailStudent: $emailStudent, ')
          ..write('emailAdvisor: $emailAdvisor, ')
          ..write('nameStudent: $nameStudent, ')
          ..write('nameAdvisor: $nameAdvisor, ')
          ..write('calif: $calif, ')
          ..write('idGroupStudent: $idGroupStudent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idStudent.hashCode,
      $mrjc(
          emailStudent.hashCode,
          $mrjc(
              emailAdvisor.hashCode,
              $mrjc(
                  nameStudent.hashCode,
                  $mrjc(nameAdvisor.hashCode,
                      $mrjc(calif.hashCode, idGroupStudent.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Student &&
<<<<<<< Updated upstream
          other.idStudent == this.idStudent &&
          other.emailStudent == this.emailStudent &&
          other.emailAdvisor == this.emailAdvisor &&
          other.nameStudent == this.nameStudent &&
          other.nameAdvisor == this.nameAdvisor &&
          other.calif == this.calif &&
          other.idGroupStudent == this.idGroupStudent);
=======
          other.idStudent == idStudent &&
          other.emailStudent == emailStudent &&
          other.emailAdvisor == emailAdvisor &&
          other.nameStudent == nameStudent &&
          other.nameAdvisor == nameAdvisor &&
          other.calif == calif &&
          other.idGroupStudent == idGroupStudent);
>>>>>>> Stashed changes
}

class StudentsCompanion extends UpdateCompanion<Student> {
  final Value<int> idStudent;
  final Value<String> emailStudent;
  final Value<String> emailAdvisor;
  final Value<String> nameStudent;
  final Value<String> nameAdvisor;
  final Value<int> calif;
  final Value<int> idGroupStudent;
  const StudentsCompanion({
    this.idStudent = const Value.absent(),
    this.emailStudent = const Value.absent(),
    this.emailAdvisor = const Value.absent(),
    this.nameStudent = const Value.absent(),
    this.nameAdvisor = const Value.absent(),
    this.calif = const Value.absent(),
    this.idGroupStudent = const Value.absent(),
  });
<<<<<<< Updated upstream
  StudentsCompanion.insert({
    this.idStudent = const Value.absent(),
    @required String emailStudent,
    @required String emailAdvisor,
    @required String nameStudent,
    @required String nameAdvisor,
    @required int calif,
    @required int idGroupStudent,
  })  : emailStudent = Value(emailStudent),
        emailAdvisor = Value(emailAdvisor),
        nameStudent = Value(nameStudent),
        nameAdvisor = Value(nameAdvisor),
        calif = Value(calif),
        idGroupStudent = Value(idGroupStudent);
=======
>>>>>>> Stashed changes
  StudentsCompanion copyWith(
      {Value<int> idStudent,
      Value<String> emailStudent,
      Value<String> emailAdvisor,
      Value<String> nameStudent,
      Value<String> nameAdvisor,
      Value<int> calif,
      Value<int> idGroupStudent}) {
    return StudentsCompanion(
      idStudent: idStudent ?? this.idStudent,
      emailStudent: emailStudent ?? this.emailStudent,
      emailAdvisor: emailAdvisor ?? this.emailAdvisor,
      nameStudent: nameStudent ?? this.nameStudent,
      nameAdvisor: nameAdvisor ?? this.nameAdvisor,
      calif: calif ?? this.calif,
      idGroupStudent: idGroupStudent ?? this.idGroupStudent,
    );
  }
}

class $StudentsTable extends Students with TableInfo<$StudentsTable, Student> {
  final GeneratedDatabase _db;
  final String _alias;
  $StudentsTable(this._db, [this._alias]);
  final VerificationMeta _idStudentMeta = const VerificationMeta('idStudent');
  GeneratedIntColumn _idStudent;
  @override
  GeneratedIntColumn get idStudent => _idStudent ??= _constructIdStudent();
  GeneratedIntColumn _constructIdStudent() {
    return GeneratedIntColumn('id_student', $tableName, true,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _emailStudentMeta =
      const VerificationMeta('emailStudent');
  GeneratedTextColumn _emailStudent;
  @override
  GeneratedTextColumn get emailStudent =>
      _emailStudent ??= _constructEmailStudent();
  GeneratedTextColumn _constructEmailStudent() {
    return GeneratedTextColumn('email_student', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _emailAdvisorMeta =
      const VerificationMeta('emailAdvisor');
  GeneratedTextColumn _emailAdvisor;
  @override
  GeneratedTextColumn get emailAdvisor =>
      _emailAdvisor ??= _constructEmailAdvisor();
  GeneratedTextColumn _constructEmailAdvisor() {
    return GeneratedTextColumn('email_advisor', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
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

  final VerificationMeta _califMeta = const VerificationMeta('calif');
  GeneratedIntColumn _calif;
  @override
  GeneratedIntColumn get calif => _calif ??= _constructCalif();
  GeneratedIntColumn _constructCalif() {
    return GeneratedIntColumn(
      'calif',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idGroupStudentMeta =
      const VerificationMeta('idGroupStudent');
  GeneratedIntColumn _idGroupStudent;
  @override
  GeneratedIntColumn get idGroupStudent =>
      _idGroupStudent ??= _constructIdGroupStudent();
  GeneratedIntColumn _constructIdGroupStudent() {
    return GeneratedIntColumn(
      'id_group_student',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        idStudent,
        emailStudent,
        emailAdvisor,
        nameStudent,
        nameAdvisor,
        calif,
        idGroupStudent
      ];
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
    if (d.idStudent.present) {
      context.handle(_idStudentMeta,
          idStudent.isAcceptableValue(d.idStudent.value, _idStudentMeta));
    } else if (idStudent.isRequired && isInserting) {
      context.missing(_idStudentMeta);
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
    if (d.calif.present) {
      context.handle(
          _califMeta, calif.isAcceptableValue(d.calif.value, _califMeta));
    } else if (calif.isRequired && isInserting) {
      context.missing(_califMeta);
    }
    if (d.idGroupStudent.present) {
      context.handle(
          _idGroupStudentMeta,
          idGroupStudent.isAcceptableValue(
              d.idGroupStudent.value, _idGroupStudentMeta));
    } else if (idGroupStudent.isRequired && isInserting) {
      context.missing(_idGroupStudentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idStudent};
  @override
  Student map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Student.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(StudentsCompanion d) {
    final map = <String, Variable>{};
    if (d.idStudent.present) {
      map['id_student'] = Variable<int, IntType>(d.idStudent.value);
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
    if (d.calif.present) {
      map['calif'] = Variable<int, IntType>(d.calif.value);
    }
    if (d.idGroupStudent.present) {
      map['id_group_student'] = Variable<int, IntType>(d.idGroupStudent.value);
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
  final String emailUserGroup;
  Group(
      {this.idGroup,
      @required this.nameGroup,
      @required this.nameSubject,
      @required this.emailUserGroup});
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
      emailUserGroup: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_user_group']),
    );
  }
  factory Group.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Group(
      idGroup: serializer.fromJson<int>(json['idGroup']),
      nameGroup: serializer.fromJson<String>(json['nameGroup']),
      nameSubject: serializer.fromJson<String>(json['nameSubject']),
      emailUserGroup: serializer.fromJson<String>(json['emailUserGroup']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'idGroup': serializer.toJson<int>(idGroup),
      'nameGroup': serializer.toJson<String>(nameGroup),
      'nameSubject': serializer.toJson<String>(nameSubject),
      'emailUserGroup': serializer.toJson<String>(emailUserGroup),
    };
  }

  @override
<<<<<<< Updated upstream
  GroupsCompanion createCompanion(bool nullToAbsent) {
=======
  T createCompanion<T extends UpdateCompanion<Group>>(bool nullToAbsent) {
>>>>>>> Stashed changes
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
      emailUserGroup: emailUserGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(emailUserGroup),
<<<<<<< Updated upstream
    );
=======
    ) as T;
>>>>>>> Stashed changes
  }

  Group copyWith(
          {int idGroup,
          String nameGroup,
          String nameSubject,
          String emailUserGroup}) =>
      Group(
        idGroup: idGroup ?? this.idGroup,
        nameGroup: nameGroup ?? this.nameGroup,
        nameSubject: nameSubject ?? this.nameSubject,
        emailUserGroup: emailUserGroup ?? this.emailUserGroup,
      );
  @override
  String toString() {
    return (StringBuffer('Group(')
          ..write('idGroup: $idGroup, ')
          ..write('nameGroup: $nameGroup, ')
          ..write('nameSubject: $nameSubject, ')
          ..write('emailUserGroup: $emailUserGroup')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idGroup.hashCode,
      $mrjc(nameGroup.hashCode,
          $mrjc(nameSubject.hashCode, emailUserGroup.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Group &&
<<<<<<< Updated upstream
          other.idGroup == this.idGroup &&
          other.nameGroup == this.nameGroup &&
          other.nameSubject == this.nameSubject &&
          other.emailUserGroup == this.emailUserGroup);
=======
          other.idGroup == idGroup &&
          other.nameGroup == nameGroup &&
          other.nameSubject == nameSubject &&
          other.emailUserGroup == emailUserGroup);
>>>>>>> Stashed changes
}

class GroupsCompanion extends UpdateCompanion<Group> {
  final Value<int> idGroup;
  final Value<String> nameGroup;
  final Value<String> nameSubject;
  final Value<String> emailUserGroup;
  const GroupsCompanion({
    this.idGroup = const Value.absent(),
    this.nameGroup = const Value.absent(),
    this.nameSubject = const Value.absent(),
    this.emailUserGroup = const Value.absent(),
  });
<<<<<<< Updated upstream
  GroupsCompanion.insert({
    this.idGroup = const Value.absent(),
    @required String nameGroup,
    @required String nameSubject,
    @required String emailUserGroup,
  })  : nameGroup = Value(nameGroup),
        nameSubject = Value(nameSubject),
        emailUserGroup = Value(emailUserGroup);
=======
>>>>>>> Stashed changes
  GroupsCompanion copyWith(
      {Value<int> idGroup,
      Value<String> nameGroup,
      Value<String> nameSubject,
      Value<String> emailUserGroup}) {
    return GroupsCompanion(
      idGroup: idGroup ?? this.idGroup,
      nameGroup: nameGroup ?? this.nameGroup,
      nameSubject: nameSubject ?? this.nameSubject,
      emailUserGroup: emailUserGroup ?? this.emailUserGroup,
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

  final VerificationMeta _emailUserGroupMeta =
      const VerificationMeta('emailUserGroup');
  GeneratedTextColumn _emailUserGroup;
  @override
  GeneratedTextColumn get emailUserGroup =>
      _emailUserGroup ??= _constructEmailUserGroup();
  GeneratedTextColumn _constructEmailUserGroup() {
    return GeneratedTextColumn(
      'email_user_group',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [idGroup, nameGroup, nameSubject, emailUserGroup];
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
    if (d.emailUserGroup.present) {
      context.handle(
          _emailUserGroupMeta,
          emailUserGroup.isAcceptableValue(
              d.emailUserGroup.value, _emailUserGroupMeta));
    } else if (emailUserGroup.isRequired && isInserting) {
      context.missing(_emailUserGroupMeta);
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
    if (d.emailUserGroup.present) {
      map['email_user_group'] =
          Variable<String, StringType>(d.emailUserGroup.value);
    }
    return map;
  }

  @override
  $GroupsTable createAlias(String alias) {
    return $GroupsTable(_db, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String emailUser;
  final String passwordUser;
  User({@required this.emailUser, @required this.passwordUser});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      emailUser: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}email_user']),
      passwordUser: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}passwordUser']),
    );
  }
  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return User(
      emailUser: serializer.fromJson<String>(json['emailUser']),
      passwordUser: serializer.fromJson<String>(json['passwordUser']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'emailUser': serializer.toJson<String>(emailUser),
      'passwordUser': serializer.toJson<String>(passwordUser),
    };
  }

  @override
<<<<<<< Updated upstream
  UsersCompanion createCompanion(bool nullToAbsent) {
=======
  T createCompanion<T extends UpdateCompanion<User>>(bool nullToAbsent) {
>>>>>>> Stashed changes
    return UsersCompanion(
      emailUser: emailUser == null && nullToAbsent
          ? const Value.absent()
          : Value(emailUser),
      passwordUser: passwordUser == null && nullToAbsent
          ? const Value.absent()
          : Value(passwordUser),
<<<<<<< Updated upstream
    );
=======
    ) as T;
>>>>>>> Stashed changes
  }

  User copyWith({String emailUser, String passwordUser}) => User(
        emailUser: emailUser ?? this.emailUser,
        passwordUser: passwordUser ?? this.passwordUser,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('emailUser: $emailUser, ')
          ..write('passwordUser: $passwordUser')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(emailUser.hashCode, passwordUser.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is User &&
<<<<<<< Updated upstream
          other.emailUser == this.emailUser &&
          other.passwordUser == this.passwordUser);
=======
          other.emailUser == emailUser &&
          other.passwordUser == passwordUser);
>>>>>>> Stashed changes
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> emailUser;
  final Value<String> passwordUser;
  const UsersCompanion({
    this.emailUser = const Value.absent(),
    this.passwordUser = const Value.absent(),
  });
<<<<<<< Updated upstream
  UsersCompanion.insert({
    @required String emailUser,
    @required String passwordUser,
  })  : emailUser = Value(emailUser),
        passwordUser = Value(passwordUser);
=======
>>>>>>> Stashed changes
  UsersCompanion copyWith(
      {Value<String> emailUser, Value<String> passwordUser}) {
    return UsersCompanion(
      emailUser: emailUser ?? this.emailUser,
      passwordUser: passwordUser ?? this.passwordUser,
    );
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _emailUserMeta = const VerificationMeta('emailUser');
  GeneratedTextColumn _emailUser;
  @override
  GeneratedTextColumn get emailUser => _emailUser ??= _constructEmailUser();
  GeneratedTextColumn _constructEmailUser() {
    return GeneratedTextColumn(
      'email_user',
      $tableName,
      false,
    );
  }

  final VerificationMeta _passwordUserMeta =
      const VerificationMeta('passwordUser');
  GeneratedTextColumn _passwordUser;
  @override
  GeneratedTextColumn get passwordUser =>
      _passwordUser ??= _constructPasswordUser();
  GeneratedTextColumn _constructPasswordUser() {
    return GeneratedTextColumn('passwordUser', $tableName, false,
        $customConstraints: 'passwordUser >= 8');
  }

  @override
  List<GeneratedColumn> get $columns => [emailUser, passwordUser];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(UsersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.emailUser.present) {
      context.handle(_emailUserMeta,
          emailUser.isAcceptableValue(d.emailUser.value, _emailUserMeta));
    } else if (emailUser.isRequired && isInserting) {
      context.missing(_emailUserMeta);
    }
    if (d.passwordUser.present) {
      context.handle(
          _passwordUserMeta,
          passwordUser.isAcceptableValue(
              d.passwordUser.value, _passwordUserMeta));
    } else if (passwordUser.isRequired && isInserting) {
      context.missing(_passwordUserMeta);
    }
    return context;
  }

  @override
<<<<<<< Updated upstream
  Set<GeneratedColumn> get $primaryKey => {emailUser};
=======
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
>>>>>>> Stashed changes
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsersCompanion d) {
    final map = <String, Variable>{};
    if (d.emailUser.present) {
      map['email_user'] = Variable<String, StringType>(d.emailUser.value);
    }
    if (d.passwordUser.present) {
      map['passwordUser'] = Variable<String, StringType>(d.passwordUser.value);
    }
    return map;
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
<<<<<<< Updated upstream
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
=======
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
>>>>>>> Stashed changes
  $StudentsTable _students;
  $StudentsTable get students => _students ??= $StudentsTable(this);
  $GroupsTable _groups;
  $GroupsTable get groups => _groups ??= $GroupsTable(this);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
<<<<<<< Updated upstream
  QueriesDao _queriesDao;
  QueriesDao get queriesDao => _queriesDao ??= QueriesDao(this as AppDatabase);
  @override
  List<TableInfo> get allTables => [students, groups, users];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$QueriesDaoMixin on DatabaseAccessor<GeneratedDatabase> {
  $StudentsTable get students => db.students;
  $GroupsTable get groups => db.groups;
  $UsersTable get users => db.users;
}
=======
  @override
  List<TableInfo> get allTables => [students, groups, users];
}
>>>>>>> Stashed changes
