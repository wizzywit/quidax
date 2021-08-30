'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    // Book belongsToMany Authors
    await queryInterface.createTable(
        'BookAuthors',
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
          authorId: {
            type: Sequelize.INTEGER,
              allowNull: false,
              references: {
                  model: {
                      tableName: 'Authors',
                  },
                  key: 'id',
                  as: 'authorId',
              },
              onUpdate: 'CASCADE',
              onDelete: 'CASCADE',
          },
        }
    );
  },

  down: async (queryInterface, Sequelize) => {
    // remove table
    await queryInterface.dropTable('BookAuthors');
  }
};
