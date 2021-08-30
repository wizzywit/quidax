'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Book extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.belongsToMany(models.Tag, {through: 'BookTags', foreignKey: 'bookId'})
      this.belongsTo(models.Genre,{ foreignKey: 'genreId'})
      this.hasMany(models.Like, { foreignKey: 'bookId'})
      this.hasMany(models.Rating, { foreignKey: 'bookId'})
      this.belongsToMany(models.Author, {through: 'BookAuthors', foreignKey: 'bookId'})
    }
  };
  Book.init({
    title: DataTypes.STRING,
    genreId: DataTypes.INTEGER,
    description: DataTypes.TEXT,
    imagePath: DataTypes.STRING,
    price: DataTypes.DOUBLE,
    copies: DataTypes.INTEGER,
    publisher: DataTypes.STRING,
    featured: DataTypes.BOOLEAN,
    releasedDate: DataTypes.DATEONLY,
  }, {
    sequelize,
    modelName: 'Book',
  });
  return Book;
};