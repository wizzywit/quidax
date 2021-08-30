'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Genre extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      this.hasMany(models.Book, { foreignKey: 'genreId' })
    }
  };
  Genre.init({
    genreName: DataTypes.STRING,
  }, {
    sequelize,
    modelName: 'Genre',
  });
  return Genre;
};