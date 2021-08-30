'use strict';
const Role = require('../_middleware/role')

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('Users', {
      accUUID: {
        type: Sequelize.UUID,
        defaultValue: Sequelize.UUIDV4,
        allowNull: false,
        primaryKey: true
      },
      emailVerified: { type: Sequelize.BOOLEAN, allowNull: false, defaultValue: false },
      uniqueString: { type: Sequelize.TEXT, allowNull: true },
      idVerified: { type: Sequelize.BOOLEAN, allowNull: false, defaultValue: false },
      email: { type: Sequelize.STRING, allowNull: false },
      password: { type: Sequelize.STRING, allowNull: false },
      role: {
        type: Sequelize.ENUM([...Object.values(Role)]),
        allowNull: false,
        defaultValue: Role.User,
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
    await queryInterface.dropTable('Users');
  }
};