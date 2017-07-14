package lib

import java.util.function.Consumer

import com.github.pgasync.QueryExecutor
import com.github.pgasync.ResultSet

/**
 * A trait that can be applied to any QueryExecutor (Db, Connection, ConnectionPool, Transaction)
 */
//@SelfType(QueryExecutor)
trait GQueryExecutor {
    /**
     * Splits the GString into SQL and params.
     *
     * E.g. query("SELECT * FROM comments WHERE author=${user.name}",...) would call
     * query("SELECT * FROM comments WHERE author=$1", [user.name], ...).
     *
     * @param sql SQL to execute
     * @param onResult Called when query is completed
     * @param onError Called on exception thrown
     */
    void query(GString sql, Consumer<ResultSet> onResult, Consumer<Throwable> onError) {
        if (!sql?.values) {
            proxyTarget.query(sql, onResult, onError);
            return;
        }

        def s = ""
        for (int i = 0; i < sql.strings.length; i++) {
            s += sql.strings[i] + (i < sql.values.length ? "\$${i+1}" : "")
        }

        proxyTarget.query(s, Arrays.asList(sql.values), onResult, onError)
    }
}
