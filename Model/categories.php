<?php
class categories extends Db
{
    public function getAllProducts ()
    {
    $sql = self::$connection->prepare("SELECT * FROM `categories`");
    $sql->execute(); //return an object
    $items = array();
    $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
    return $items; //return an array
    }
    
}
