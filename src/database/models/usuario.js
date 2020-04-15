module.exports = (sequelize, DataTypes) => {
    let alias = 'usuarios';
    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            unsigned: true,
            unique: true,
            allowNull: false
        },
        usuario: DataTypes.STRING,
        dni: DataTypes.INTEGER,
        nombre: DataTypes.STRING,
        email: DataTypes.STRING,
        telefono: DataTypes.INTEGER,
        provincia: DataTypes.STRING,
        localidad: DataTypes.STRING,
        password: DataTypes.STRING,
        avatar: DataTypes.STRING
    };
    let config = {
        tableName: 'usuarios'
    };
    
    const usuario = sequelize.define(alias, cols, config);
    return usuario;
};
