<?php

// -----------------------------------------------------------------------
// Vérification champs input
// -----------------------------------------------------------------------
function checkInput($data)
{
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data, ENT_NOQUOTES);
	return $data;
}


// -----------------------------------------------------------------------
// Contrôle d'une quantité saisie
// -----------------------------------------------------------------------
function isValidQuantity($quantity)
{
	if ( !is_numeric($quantity) || empty($quantity) || $quantity <= 0 )
	{
		return false;
	}
	else
	{
		return true;
	}
}


// -----------------------------------------------------------------------
// Vérifie si produit est suivi en stock ou non
// -----------------------------------------------------------------------
function isProductTracked($stock)
{
    if ( $stock == -1 )
    {
        return '<img src="assets/img/icon-validate_15x15.png"';
    }
    else
    {
        return '<img src="assets/img/icon-cancel_15x15.png"';
    }
}


// -----------------------------------------------------------------------
// Vérifie si produit est suivi en stock ou non
// -----------------------------------------------------------------------
function isLocationLocked($locked, $list)
{
    if ( $locked == 1 )
    {
        return '<img src="assets/img/cadenas_20x20.png"';
    }
    else
    {
        return '<button type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-plus" data-backdrop="false" data-id="' . $list['id'] . '" data-stock="' . $list['stock'] . '" data-tooltip="tooltip" data-placement="top" title="Ajustement positif"><span class="glyphicon glyphicon-plus"></span></button>
				<button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#modal-minus" data-backdrop="false" data-id="' . $list['id'] . '" data-stock="' . $list['stock'] . '" data-tooltip="tooltip" data-placement="top" title="Ajustement négatif"><span class="glyphicon glyphicon-minus"></span></button>
				<button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modal-delete" data-backdrop="false" data-id="' . $list['id'] . '" data-stock="' . $list['stock'] . '" data-tooltip="tooltip" data-placement="top" title="Sortie de stock"><span class="glyphicon glyphicon-remove"></span></button>
				<button type="button" class="btn btn-sm btn-dark" data-toggle="modal" data-target="#modal-transfer" data-backdrop="false" data-id="' . $list['id'] . '" data-stock="' . $list['stock'] . '" data-tooltip="tooltip" data-placement="top" title="Transfert"><span class="glyphicon glyphicon-transfer"></span></button>
				<button type="button" class="btn btn-sm btn-info" data-toggle="modal" data-target="#modal-update" data-backdrop="false" data-id="' . $list['id'] . '" data-stock="' . $list['stock'] . '" data-tooltip="tooltip" data-placement="top" title="Modifications"><span class="glyphicon glyphicon-pencil"></span></button>';
    }
}