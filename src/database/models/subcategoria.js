module.exports = (sequelize, DataTypes) => {
    let alias = 'subcategorias';
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
        tableName: 'subcategorias'
    };

    const subcategoria = sequelize.define(alias, cols, config);
    return subcategoria;
};