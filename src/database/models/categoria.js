module.exports = (sequelize, DataTypes) => {
    let alias = 'categorias';
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
        tableName: 'categorias'
    };

    const categoria = sequelize.define(alias, cols, config);
    return categoria;
};