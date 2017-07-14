package lib

import com.github.pgasync.ResultSet
import com.github.pgasync.Row

//@SelfType(ResultSet)
trait GResultSet {
        Iterator<Row> iterator() {
                return new GRowIterator(proxyTarget.iterator());
        }

        Row row(int index) {
                proxyTarget.row(index) as GRow
        }

        private static class GRowIterator implements Iterator<Row> {
                private final Iterator<Row> rowIterator;
                private GRowIterator(final Iterator<Row> rowIterator) { this.rowIterator = rowIterator; }
                @Override public boolean hasNext() { return rowIterator.hasNext(); }
                @Override public Row next() { return rowIterator.next() as GRow; }
                @Override public void remove() { rowIterator.remove(); }
        }
}
