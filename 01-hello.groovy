import util.DbFactory

def db = DbFactory.usersDb()

db.query "SELECT 'Hello world!' AS message",
         {
                println it.row(0).getString('message')
                db.close()
         },
         {
                it.printStackTrace()
                db.close()
         }
