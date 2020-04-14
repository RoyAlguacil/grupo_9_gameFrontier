module.exports = (sequelize, DataTypes) => {
    let alias = 'admins';
    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            unsigned: true,
            unique: true,
            allowNull: false
        },       
        nombre: DataTypes.STRING,
        usuario: DataTypes.STRING,
        email: DataTypes.STRING,
        password: DataTypes.STRING,
        avatar: DataTypes.STRING
    };
    let config = {
        tableName: 'admins'
    };

    return sequelize.define(alias, cols, config);
};
