module.exports = (sequelize, DataTypes) => {
    let alias = 'marcas';
    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            unsigned: true,
            unique: true,
            allowNull: false
        },
        nombre: DataTypes.STRING
    };
    let config = {
        tableName: 'marcas'
    };

    const marca = sequelize.define(alias, cols, config);
    return marca;
};