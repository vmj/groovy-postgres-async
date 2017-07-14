package lib

import com.github.pgasync.Row

//@SelfType(Row)
trait GRow {
        def propertyMissing(String name) {
                // HOX: Object get(String) is not actually part of the Row interface,
                //      but PgRow implements such public method.  Naturally, PgRow may
                //      change that any day.
                proxyTarget.get(name);
        }
}
