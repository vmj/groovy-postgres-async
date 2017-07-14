
/* MODELS */

class Entity {
      String uuid
}

class Server extends Entity {
      Long id
      String url
}

Server server = new Server(id: 1, uuid: '12345678-1234-1234-1234-123456789abc', url: 'https://api.recycloid.org')

/* PG QUERIES */

trait PgSql {
      def find(qry = [select: '*', where: null]) {
          def columns = qry.get('select', '*')
          def clazz = proxyTarget instanceof Class ? proxyTarget : proxyTarget.class
          def table = clazz.simpleName.toLowerCase() + 's'

          "SELECT $columns FROM $table"
      }
}




def pgServer = server as PgSql

assert pgServer.find() == "SELECT * FROM servers"
assert pgServer.find(select: 'id') == "SELECT id FROM servers"

def PgServer = Server as PgSql

assert PgServer.find() == "SELECT * FROM servers"
assert PgServer.find(select: 'id') == "SELECT id FROM servers"
assert PgServer.find(where: { id == 1 }) == ['SELECT * FROM servers WHERE id = $1', 1]
