'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    // Book belongsToMany Tag
    await queryInterface.createTable(
        'BookTags',
        {
            id: {
                allowNull: false,
                autoIncrement: true,
                primaryKey: true,
                type: Sequelize.INTEGER
            },
          createdAt: {
            allowNull: false,
            type: Sequelize.DATE,
          },
          updatedAt: {
            allowNull: false,
            type: Sequelize.DATE,
          },
          bookId: {
            type: Sequelize.INTEGER,
              allowNull: false,
              references: {
                  model: {
                      tableName: 'Books',
                  },
                  key: 'id',
                  as: 'bookId',
              },
              onUpdate: 'CASCADE',
              onDelete: 'CASCADE',
          },
          tagId: {
            type: Sequelize.INTEGER,
              allowNull: false,
              references: {
                  model: {
                      tableName: 'Tags',
                  },
                  key: 'id',
                  as: 'tagId',
              },
              onUpdate: 'CASCADE',
              onDelete: 'CASCADE',
          },
        }
    );
  },

  down: async (queryInterface, Sequelize) => {
    // remove table
    await queryInterface.dropTable('BookTags');
  }
};
