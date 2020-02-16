module.exports = (sequelize, DataTypes) => {
    let alias = 'colores';
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
        tableName: 'colores'
    };

    const color = sequelize.define(alias, cols, config);
    return color;
};