'use strict';
const moment = require('moment')

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Books', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      title: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      description: {
        type: Sequelize.TEXT,
        allowNull: false,
      },
      imagePath: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      genreId: {
        type: Sequelize.INTEGER,
        references: {
          model: {
            tableName: 'Genres',
          },
          key: 'id',
          as: 'genreId',
        },
        onUpdate: 'CASCADE',
        onDelete: 'SET NULL',
      },
      price: {
        type: Sequelize.DOUBLE,
        allowNull: false,
      },
      copies: {
        type: Sequelize.INTEGER,
        allowNull: false,
        defaultValue: 0,
      },
      publisher: {
        type: Sequelize.STRING,
        allowNull: false
      },
      featured: {
        type: Sequelize.BOOLEAN,
        defaultValue: false
      },
      releasedDate: {
        type: Sequelize.DATEONLY,
        allowNull: false,
        get: function() {
          return moment.utc(this.getDataValue('releasedDate')).format('DD-MM-YYYY');
        }
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('Books');
  }
};