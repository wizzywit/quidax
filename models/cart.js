'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Cart extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.hasMany(models.Item, { foreignKey: 'cartId' })
      this.belongsTo(models.User, { foreignKey: 'userId' })

    }
  };
  Cart.init({
    subTotal: DataTypes.DOUBLE,
  }, {
    sequelize,
    modelName: 'Cart',
  });
  return Cart;
};