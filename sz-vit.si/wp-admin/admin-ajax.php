<?php

if ($_REQUEST) {

    if ($_REQUEST['action'] == 'emigma_ajax_search') {

        $ajax_data = [];

        $params = [
                'q' => $_REQUEST['q'],
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
            $segment->link = str_replace('https://sz-vit.si/', '/slovenske-zeljeznice/sz-vit.si/', $old_link);

            $ajax_data[] = $segment;
        }

        echo json_encode($ajax_data);
    }

}