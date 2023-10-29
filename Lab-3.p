// Интерфейс строителя
interface MyQueryBuilder is
    method select(fields: Array): MyQueryBuilder
    method where(condition: String): MyQueryBuilder
    method limit(count: Int, offset: Int): MyQueryBuilder
    method getSQL(): str

// строитель для PostgreSQL
class PostgreSQLQueryBuilder implements MyQueryBuilder is
    method select(fields: Array): MyQueryBuilder
    method where(condition: String): MyQueryBuilder
    method limit(count: Int, offset: Int): MyQueryBuilder
    method getSQL(): str

// строитель для MySQL
class MySQLQueryBuilder implements MyQueryBuilder is
    method select(fields: Array): MyQueryBuilder
    method where(condition: String): MyQueryBuilder
    method limit(count: Int, offset: Int): MyQueryBuilder
    method getSQL(): str

// Директор
class Director is
    method constructSimpleQuery(builder: MyQueryBuilder)

// Пример использования:
// Инициализация объектов
director = new Director()
pg_builder = new PostgreSQLQueryBuilder()
mysql_builder = new MySQLQueryBuilder()

// Пример использования строителя для PostgreSQL
director.constructSimpleQuery(pg_builder)
sql_query_pg = pg_builder.getSQL()
print(sql_query_pg)

// Пример использования строителя для MySQL
director.constructSimpleQuery(mysql_builder)
sql_query_mysql = mysql_builder.getSQL()
print(sql_query_mysql)
