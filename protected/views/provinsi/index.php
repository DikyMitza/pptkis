<?php
/* @var $this ProvinsiController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Provinsi',
);

$this->menu=array(
	array('label'=>'Create Provinsi', 'url'=>array('create')),
	array('label'=>'Manage Provinsi', 'url'=>array('admin')),
);
?>

<h1>Data Provinsi</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
