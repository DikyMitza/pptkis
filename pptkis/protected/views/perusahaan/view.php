<?php
/* @var $this PerusahaanController */
/* @var $model Perusahaan */

$this->breadcrumbs=array(
	'Perusahaans'=>array('index'),
	$model->id_perusahaan,
);

$this->menu=array(
	array('label'=>'List Perusahaan', 'url'=>array('index')),
	array('label'=>'Create Perusahaan', 'url'=>array('create')),
	array('label'=>'Update Perusahaan', 'url'=>array('update', 'id'=>$model->id_perusahaan)),
	array('label'=>'Delete Perusahaan', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_perusahaan),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Perusahaan', 'url'=>array('admin')),
);
?>

<h1>View Perusahaan #<?php echo $model->id_perusahaan; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_perusahaan',
		'nm_perusahaan',
		'alamat',
		'telp',
		'fax',
		'email',
	),
)); ?>
