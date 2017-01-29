<?php
/* @var $this ProvinsiController */
/* @var $data Provinsi */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_provinsi')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_provinsi), array('view', 'id'=>$data->id_provinsi)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nm_provinsi')); ?>:</b>
	<?php echo CHtml::encode($data->nm_provinsi); ?>
	<br />


</div>