<?php

include_once 'utils.php';

function colour_get()
{
	static $colours = null;

	if ($colours === null) {
		include_once 'db.php';
		include 'db_names.php';
		$colours = db_select($DB_COLOUR);
	}

	return $colours;
}

function colour_match_single ($test)
{
	$colours = colour_get();
	if (!$colours)
		return nulll;

	$test = trim ($test);
	if (!$test)
		return null;

	$count = 0;
	$match = null;
	foreach ($colours as $key => $c) {
		$p1 = strpos ($test, '/');
		$p2 = strpos ($c['colour'], '/');
		if ((partial_match ($test, $c['colour']) &&
		    ($p1 === $p2))) {
			$match = &$colours[$key];
			$count++;
			continue;
		}
		$abbr = explode (',', $c['abbr']);
		foreach ($abbr as $a) {
			if (strcasecmp ($test, $a) === 0) {
				return $colours[$key];
			}
		}
	}

	if ($count == 1) {
		return $match;
	} else {
		return null;
	}
}

function colour_match ($test)
{
	$col1 = colour_match_single ($test);
	if ($col1 !== null)
		return $col1;

	$pos = strpos ($test, '/');
	if ($pos === false)
		return null;

	$col1 = colour_match_single (substr($test, 0, $pos));
	$col2 = colour_match_single (substr($test, $pos+1));

	if (($col1 === null) || ($col2 === null))
		return null;

	return colour_match_single ($col1['colour'].'/'.$col2['colour']);
}

function colour_match_xml (&$xml, $test)
{
	$colour = colour_match ($test);
	if ($colour === null) {
		$xml->addChild ('error', sprintf ("'%s' is not a valid colour", $test));
		return false;
	} else {
		$xml->colour    = $colour['colour'];
		$xml->colour_id = $colour['id'];
		return true;
	}
}

