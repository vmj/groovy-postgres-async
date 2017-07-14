import util.DbFactory
import model.User
import lib.GQueryExecutor

User user = [uuid: '06b535fb-2d44-48a8-93fe-f49fe7766cf8', username: 'john']

def db = DbFactory.usersDb() as GQueryExecutor

db.query "INSERT INTO users (uuid, username) VALUES (${user.uuid}, ${user.username})",
         {
                println "Updated ${it.updatedRows()} rows"
                db.close()
         },
         {
                it.printStackTrace()
                db.close()
         }
