package util

@Grab("com.github.alaisi.pgasync:postgres-async-driver:0.6")
import com.github.pgasync.ConnectionPoolBuilder
import com.github.pgasync.Db

class DbFactory {

      static Db usersDb() {
             return  new ConnectionPoolBuilder()
                     .hostname('localhost')
                     .port(5432)
                     .database('users')
                     .username('user-service')
                     .password('salasana')
                     .poolSize(20)
                     .build()
      }
}
