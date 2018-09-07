<?php

namespace App\controllers;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class UserOrderCartManagementController extends \App\Core\Role\UserRoleController{
    private $orderId;
    public function index(){
        $orderModel =new \App\models\OrderCartModel($this->getDatabaseConnection());
        $order = $orderModel->stateUObradi();
        $this->set('orders',$order);

    }

    public function postIndex(){
        $order = \filter_input(INPUT_POST, 'order_cart_id', FILTER_SANITIZE_NUMBER_INT);

        $this->redirect(\Configuration::BASE . 'user/orders/edit/'.$order);
        $orderId = $order;
    }

    public function odobravanje($orderId){
        $orderCartModel = new \App\models\OrderCartModel($this->getDatabaseConnection());
        $orderCart = $orderCartModel->selectAllFromOrder($orderId);
        $this->set('odobravanje',$orderCart);
        $models = $orderCartModel->modelNamePriceForModel($orderCart[0]['cart_id']);
        $this->set('modeli',$models);
        $order = \filter_input(INPUT_POST, 'proces', FILTER_SANITIZE_STRING);

    }
    
    
    public function postOdobravanje($orderId){
        $orderCartModel = new \App\models\OrderCartModel($this->getDatabaseConnection());
        $order = $orderCartModel->selectAllFromOrder($orderId);
        $email = $order[0]['email'];
        $update1 = $order[0]['order_cart_id'];
        
        $cartId = $order[0]['cart_id'];
        
        $models = $orderCartModel->modelNamePriceForModel($cartId);
        $suma = $orderCartModel->suma($models[0]['price_beauty']);
        $stanje = $order[0]['state'];
        $order1 = \filter_input(INPUT_POST, 'proces', FILTER_SANITIZE_STRING);
        $update = $orderCartModel->updateState($order1,$update1);
        $string2 = "";
        foreach($models as $niz){
            $string2 .= $niz['name']."  Cena proizvoda: ".$niz['price_beauty']." RSD \n";
        }


    }
}