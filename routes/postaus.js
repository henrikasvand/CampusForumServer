var express = require('express');
var router = express.Router();
var postausService = require ('../postausService')

/* GET users listing. */
//GET /api/postaus
router.get('/', function(req, res, next) {
//   res.send('Ja yhteys on!');
  postausService.getPosts((rows)=>{
      res.json(rows);
  })
});

//GET /api/postaukset/1
router.get('/:id', function(req, res, next){
    postausService.getPost(req.params.id,(rows)=>{
     res.json(rows[0]);
   })
 })

//POST /api/postaus
router.post('/', function(req, res, next){
    postausService.insertPost(req.body, (rowCount)=>{
      if(rowCount>0)
      res.status(201).json({message:'Uuden lisäys onnistui!'});
      else{
        res.status(400).json({message:'Oho, kävi virhe!'});
      }
    })
 })

//  //PUT /api/postaus/1
router.put('/:id', function(req, res, next){
    postausService.updatePost(req.body, req.params.id, (rowCount)=>{
      if(rowCount>0)
      res.status(200).json({message:'Muokkaus onnistui'});
      else{
        res.status(400).json({message:'Oho, kävi virhe!'});
      }
    })
  })

//DELETE /api/postaus/1
  router.delete('/:id', function(req, res, next){
    postausService.deletePost(req.params.id, (rowCount)=>{
      if(rowCount>0)
      res.status(200).json({message:'Poisto onnistui!'});
      else{
        res.status(400).json({message:'Oho, kävi virhe!'});
      }
    })
  })



module.exports = router;