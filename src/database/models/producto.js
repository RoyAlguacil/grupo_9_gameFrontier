module.exports = (sequelize, DataTypes) => {
    let alias = 'productos';
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
        precio: DataTypes.INTEGER,
        imagen: DataTypes.STRING,
        descripcion: DataTypes.STRING,
        codigo: DataTypes.INTEGER,
        usuarioId: DataTypes.INTEGER,
        marcaId: DataTypes.INTEGER,
        categoriaId: DataTypes.INTEGER,
        colorId: DataTypes.INTEGER
    };
    let config = {
        tableName: 'productos'
    };

    const producto = sequelize.define(alias, cols, config);
    return producto;
};