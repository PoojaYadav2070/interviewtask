/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	const brand = sequelize.define('brand', {
		id: {
			type: DataTypes.INTEGER(11),
			allowNull: true,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		menu_id: {
			type: DataTypes.STRING(255),
			allowNull: true,
			field: 'brandName',
			defaultValue: 1,
		},
		image: {
			type: DataTypes.STRING(255),
			allowNull: true,
			field: 'image',
			defaultValue: '',
		},
		status: {
			type: DataTypes.INTEGER(4),
			allowNull: true,
			field: 'status',
			defaultValue: 1,
		},
		createdAt: {
			type: DataTypes.DATE,
			allowNull: true,
			defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
			field: 'createdAt'
		},
		updatedAt: {
			type: DataTypes.DATE,
			allowNull: true,
			defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
			field: 'updatedAt'
		}
	}, {
		tableName: 'brand',
		
	});



	return brand;
};
