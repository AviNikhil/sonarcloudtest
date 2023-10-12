package com.infinite.database;



import javax.sql.DataSource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

public class Database {
	private static DataSource ds = null;

	public static DataSource getDataSource() {
		if (ds == null) {
			HikariConfig cg = new HikariConfig();
			cg.setDriverClassName("com.mysql.jdbc.Driver");
			cg.setJdbcUrl("jdbc:mysql://localhost:3306/wallet");
			cg.setUsername("root");
			cg.setPassword("mysql123@");
			cg.setMaximumPoolSize(10);
			cg.setAutoCommit(true);
			cg.addDataSourceProperty("cachePrepStmts", "true");
			cg.addDataSourceProperty("prepStmtCacheSize", 250);
			cg.addDataSourceProperty("prepStmtCacheSqlLimit", 2048);
			ds = new HikariDataSource(cg);
		}
		return ds;

	}
}
