<?php

set_include_path ('../libs');

include 'db.php';
include 'db_names.php';
#include 'utils.php';

if (!isset ($_GET))
	return;

if (!array_key_exists ('q', $_GET))
	return;

$q=trim($_GET['q']);
#if ($q != 'route')
#	return;

#$g_routes  = db_select('route');
#$g_colours = db_select('colour');
#$g_panels  = db_select('panel');

header('Content-Type: application/xml; charset=ISO-8859-1');

$table   = $DB_V_ROUTE;
$columns = array ('id', 'panel', 'colour', 'grade');
$where   = "panel like '%{$q}%'";
$order   = "panel_seq, grade_seq, colour";

$route_list = db_select($table, $columns, $where, $order);

$output = "<?xml version='1.0' encoding='UTF-8' standalone='yes'?>\n";
$output .= "<routes>\n";

foreach ($route_list as $route) {
	$output .= "\t<route>\n";
	foreach ($columns as $name) {
		$value = $route[$name];
		$output .= "\t\t<$name>$value</$name>\n";
	}
	$output .= "\t</route>\n";
}

$output .= "</routes>\n";

echo $output;
