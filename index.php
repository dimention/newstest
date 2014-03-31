<?php

require 'Classes/Smarty/libs/Smarty.class.php';

$dir = 'http://dimention.lt/newstest';

$db = new SQLite3('naujienos.db');

$db->exec('
  CREATE TABLE IF NOT EXISTS news (
  id INTEGER PRIMARY KEY NOT NULL,
  antraste TEXT,
  data TEXT,
  tekstas TEXT)
');
/*
$dummy = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

$pradiniai = [
    ['Pirma antraštė', time() - 60 * 60 * 24, $dummy],
    ['Antra ilgesnė antraštė', time() - 60 * 60 * 24 * 2, $dummy],
    ['Trečia tikrai labai ilga antraštė', time() + 60 * 60 * 24 * 3, $dummy]
];

$insert = "INSERT INTO news (antraste, data, tekstas)
           VALUES (:antraste, :data, :tekstas)";
$all = $db->prepare($insert);

$all->bindParam(':antraste', $antraste);
$all->bindParam(':data', $data);
$all->bindParam(':tekstas', $tekstas);

foreach ($pradiniai as list($antraste, $data, $tekstas)) {
    $data = date('Y.m.d H:i', $data);
    $all->execute();
}
*/
$res = $db->query('SELECT * FROM news ORDER BY data DESC');

$array = function () {
    global $res;
    while ($row = $res->fetchArray(SQLITE3_BOTH)) {
        $this[] = $row;
    }
    return $this;
};

$smarty = new Smarty();
$smarty->assign('visi', $array());
$smarty->assign('dir', $dir);
$smarty->display('Templates/index.tpl');

