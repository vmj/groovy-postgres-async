import util.DbFactory
import model.User
import lib.GResultSet

def db = DbFactory.usersDb()

db.query "SELECT * FROM users",
         {
                def res = it as GResultSet
                res.each { row -> println row.username }
                db.close()
         },
         {
                it.printStackTrace()
                db.close()
         }
