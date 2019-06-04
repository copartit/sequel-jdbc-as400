# frozen-string-literal: true

module Sequel
  class Database
    private

    # The SQL query to issue to check if a connection is valid.
    # Sequel generally uses SELECT NULL, which is not valid on DB2.
    # DB2 requires a FROM statement for all queries, so we must use
    # the sysibm.sysdummy1 table to emulate the behavior.
    def valid_connection_sql
      @valid_connection_sql ||= select(1).from(Sequel[:sysibm][:sysdummy1]).sql
    end
  end
end
