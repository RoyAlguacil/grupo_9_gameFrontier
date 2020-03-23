module.exports = (sequelize, DataTypes) => {
  let alias = "productos";
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
    codigo: DataTypes.STRING,
    usuarioId: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    marcaId: DataTypes.INTEGER,
    categoriaId: DataTypes.INTEGER,
    subcategoriaId: DataTypes.INTEGER,
    colorId: DataTypes.INTEGER
  };
  let config = {
    tableName: "productos"
  };

  const producto = sequelize.define(alias, cols, config);

  producto.associate = function(models) {
    producto.belongsTo(models.usuarios, {
      as: "usuarios",
      foreignKey: "usuarioId"
    });
    producto.belongsTo(models.marcas, {
      as: "marcas",
      foreignKey: "marcaId"
    });
    producto.belongsTo(models.colores, {
      as: "colores",
      foreignKey: "colorId"
    });
    producto.belongsTo(models.categorias, {
      as: "categorias",
      foreignKey: "categoriaId"
    });
    producto.belongsTo(models.subcategorias, {
      as: "subcategorias",
      foreignKey: "subcategoriaId"
    });
  };
  return producto;
};
