'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Item extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.belongsTo(models.Cart, { foreignKey: 'cartId' })
      this.belongsTo(models.Book, { foreignKey: 'bookId' })
    }
  };
  Item.init({
    quantity: DataTypes.INTEGER,
    price: DataTypes.DOUBLE,
    cartId: DataTypes.INTEGER,
    bookId: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Item',
  });
  return Item;
};