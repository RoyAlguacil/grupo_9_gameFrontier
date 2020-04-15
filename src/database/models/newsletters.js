module.exports = (sequelize, DataTypes) => {
    let alias = 'newsletters';
    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            unsigned: true,
            unique: true,
            allowNull: false
        },
        email: DataTypes.STRING,
    };
    let config = {
        tableName: 'newsletters'
    };

    return sequelize.define(alias, cols, config);
};
