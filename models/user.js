'use strict';
const Role = require('../_middleware/role')

const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.hasOne(models.Cart, { foreignKey: 'userId' })
    }
  };
  User.init({
    accUUID: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      primaryKey: true
    },
    emailVerified: { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: false },
    uniqueString: { type: DataTypes.TEXT, allowNull: true },
    idVerified: { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: false },
    email: { type: DataTypes.STRING, allowNull: false },
    password: { type: DataTypes.STRING, allowNull: false },
    role: {
      type: DataTypes.ENUM([...Object.values(Role)]),
      allowNull: false,
      defaultValue: Role.User,
    },
  }, {
    sequelize,
    modelName: 'User',
    defaultScope: {
      // exclude hash by default
      attributes: { exclude: ['password'] },
    },
    scopes: {
      // include hash with this scope
      withHash: { attributes: {} },
      withOutRoles: { attributes: { exclude: ['password', 'role'] } },
    },
  });
  return User;
};