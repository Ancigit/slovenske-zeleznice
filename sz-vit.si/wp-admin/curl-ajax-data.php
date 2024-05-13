<?php

// specific search words go here
$words = [
    'o nas', 'vzdrzevanje', 'leka', 'tvd', 'aktualno', 'kontakti', 'preberi vec', 'predstavitev',
    'Poslanstvo, vizija in vrednote', 'vodstvo', 'reference', 'Politika kakovosti in certifikati'
];

$file_content = [];

foreach ($words as $word) {
    $params = [
        'q' => $word,
        'action' => 'emigma_ajax_search'
    ];

    $defaults = [
        CURLOPT_URL => 'https://sz-vit.si/wp-admin/admin-ajax.php',
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => $params,
        CURLOPT_RETURNTRANSFER => true
    ];

    $curl = curl_init();

    curl_setopt_array($curl, $defaults);

    $data = curl_exec($curl);
    curl_close($curl);

    foreach (json_decode($data) as $segment) {
        $old_link = $segment->link;
        $segment->link = str_replace('https://sz-vit.si/', '', $old_link);

        $file_content[] = $segment;
    }
}

file_put_contents('data-ajax.txt', json_encode($file_content));

echo nl2br("Data file updated.\n");
echo nl2br("___ data-ajax.txt ___\n");

$file_value = file_get_contents('data-ajax.txt');

var_dump(json_decode($file_value));

die;