/* jshint indent: 1 */

module.exports = function (sequelize, DataTypes) {
	const menus = sequelize.define('menu', {
		id: {
			type: DataTypes.INTEGER(11),
			allowNull: true,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
       
		category: {
			type: DataTypes.STRING(255),
			allowNull: true,
			field: 'category',
		},
		feature: {
			type: DataTypes.STRING(255),
			allowNull: true,
			field: 'feature',
		},
		menu_type: {
			type: DataTypes.STRING(255),
			allowNull: true,
			field: 'menu_type',
		},
		name: {
			type: DataTypes.STRING(255),
			allowNull: true,
			field: 'name',
		},
        slug:{
            type:DataTypes.STRING(255),
            allowNull:true,
            field:"slug",
            
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
		tableName: 'menu',
		
	});
	return menus;
};
