<?php

namespace App\controllers;

class ModelController extends \App\core\Controller{
    private $modelId;
    private $sessionId;
    public function show($id){
        $categoryModel = new \App\Models\CategoryModel($this->getDatabaseConnection());
        $categories = $categoryModel->getAll();
        $this->set('categories',$categories);

        $sessionId = $this->getSessionId();
        $modelModel = new \App\models\ModelModel($this->getDatabaseConnection());
        $model = $modelModel->getById($id);
        $this->modelId = $id;

        if(!$model){
            header('Location: '.\Configuration::BASE);
            exit;
        }

        $this->set('model',$model);

        $modelViewModel = new \App\models\ModelViewModel($this->getDatabaseConnection());
        $ipAddress = \filter_input(INPUT_SERVER, 'REMOTE_ADDR');
        $userAgent = \filter_input(INPUT_SERVER, 'HTTP_USER_AGENT');
        $modelViewModel->add(
            [
                'model_id'   => $id,
                'ip_address' => $ipAddress,
                'user_agent' => $userAgent
            ]
            );
    }
    public function addToCart($modelId){
        $categoryModel = new \App\Models\CategoryModel($this->getDatabaseConnection());
        $categories = $categoryModel->getAll();
        $this->set('categories',$categories);

        $modelModel = new \App\models\ModelModel($this->getDatabaseConnection());
        $model = $modelModel->getById($modelId);
        $sessionId = $this->getSessionId();
        $this->set('model',$model);
    }
    public function postAddToCart($modelId){
        $categoryModel = new \App\Models\CategoryModel($this->getDatabaseConnection());
        $categories = $categoryModel->getAll();
        $this->set('categories',$categories);
        
        $modelModel = new \App\models\ModelModel($this->getDatabaseConnection());
        $model = $modelModel->getById($modelId);
        $this->set('model',$model);
        if(!$model){
            header('Location: '.\Configuration::BASE.profile/model/'.$modelId');
            exit;
        }
        $osoba = \filter_input(INPUT_POST, 'osoba');
       
        if( $osoba < 0 && $osoba > 100){
            $this->set('message','Uneta vrednost ne moze biti porucena (0 - 100)');
            return;
        }

        $profileModel = new \App\models\ProfileModel($this->getDatabaseConnection());
        $price = $profileModel->innerJoinTwoTables($modelId);
        $price = $osoba * $price['price_beauty'];
        
            
        $cartModel = new \App\models\CartModel($this->getDatabaseConnection());
        $cartModel->add([
            'session_number' => $this->getSessionId()
        ]);
        $cartId = $cartModel->selectIdWhereFieldName('session_number', $this->getSessionId());
        
        $cartModelModel = new \App\models\CartModelModel($this->getDatabaseConnection());
        
        $cartModelModel->add([
            'price' => (float)$price,
            'cart_id' =>$cartId['cart_id'],
            'model_id' => $modelId,
            'price_beauty' => $price
        ]);
        $this->set('message','Uspesno ste dodali proizvod u korpu');
        //header('Location: '.\Configuration::BASE);
    }
}