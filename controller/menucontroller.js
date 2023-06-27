const db = require('../models');
const menu = db.menu
menu.hasMany(menu, {
    as: 'children',
    foreignKey: 'parentId',
  });
  
  menu.belongsTo(menu, {
    as: 'parent',
    foreignKey: 'parentId',
  });
module.exports = {
    addmenu:async(req, res)=>{
      console.log("-====-=-=-==-=-=-=-=-Q++++++++",req.body.name);
      // return
       let getmenu =   await menu.create({ name:req.body.name,menu_type:req.body.menu_type,
                   slug:req.body.slug})
         .then(async(user_menu) => {
          let parentId=null
          let where ={}
                  if(req.body && req.body.category || req.body.feature){
                await  menu.create({
                      feature: req.body.feature,
                      category:req.body.category, 
                      parentId: user_menu.id 
                    });

                    where.parentId=user_menu.id
                  }else{
                    where.parentId=null
                  }
   
                      let detail =   await menu.findAll({
                        where:where,
                       
                        include: [
                          {
                            model: menu,
                            as: 'children',
                            required:false,
                            include: [
                              {
                                model: menu,
                                as: 'children',
                              },
                            ],
                          },
                        ],
                      })


                      let menu_parent = await menu.findOne({
                        where:{
                          id:user_menu.id
                        }
                      })

                      console.log("=======user id============detail=======>>>>>>",menu_parent);
                      // console.log("=======user id===where=========detail=======>>>>>>",where);

              console.log("=======user id============detail=======>>>>>>",detail);
              // return
            
                      console.log("=======user id============detail=======>>>>>>",menu_parent);
                        res.render("menudetail",{detail,menu_parent})
                        
                    
                      })
       

              // res.send("menu created successfully")
             
               
        .catch((error) => {
                console.error('Error creating categories:', error);
            });

    },
  
    
           

    delete:async(req,res)=>{
        try {
        
            await menu.destroy({
                where: {
                    'id': req.params.id
                }
            })
            res.redirect("back")
        } catch (error) {
             res.status(400).json(err)
            
        }
    },
    edit:async(req,res)=>{
        try {
           
            await menu.update(
                req.body

            ,{
                where: {
                    'id': req.params.id
                }
            })
            res.redirect("back")
        } catch (error) {
             res.status(400).json(err)
            
        }
    }
    
}