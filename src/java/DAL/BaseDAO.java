/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.DBConfig;
import Utils.ConfigProvider;
import Utils.Const;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hoang
 */
public abstract class BaseDAO<T> {

    protected Connection connection;

    public BaseDAO() {
        this.initDB();
    }

    private void initDB() {
        try {
            DBConfig config = this.readConfigFile("DBConfig.properties");
            Class.forName(config.getDriver());
            this.connection = DriverManager.getConnection(config.getUrl(), config.getUsername(), config.getPassword());
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }

    private DBConfig readConfigFile(String configName) {
        ConfigProvider configProvider = new ConfigProvider();
        Properties configReader = configProvider.readConfigFile(configName);
        DBConfig dbConfig = new DBConfig();
        dbConfig.setUrl(configReader.getProperty(Const.DBConfig.url.toString()));
        dbConfig.setDriver(configReader.getProperty(Const.DBConfig.driver.toString()));
        dbConfig.setUsername(configReader.getProperty(Const.DBConfig.username.toString()));
        dbConfig.setPassword(configReader.getProperty(Const.DBConfig.password.toString()));
        return dbConfig;
    }

    public abstract T get(T model);

    public abstract ArrayList<T> getAll();
}
