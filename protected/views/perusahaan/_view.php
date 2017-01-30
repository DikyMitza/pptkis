<?php
/* @var $this PerusahaanController */
/* @var $data Perusahaan */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_perusahaan')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_perusahaan), array('view', 'id'=>$data->id_perusahaan)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nm_perusahaan')); ?>:</b>
	<?php echo CHtml::encode($data->nm_perusahaan); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat')); ?>:</b>
	<?php echo CHtml::encode($data->alamat); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('telp')); ?>:</b>
	<?php echo CHtml::encode($data->telp); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fax')); ?>:</b>
	<?php echo CHtml::encode($data->fax); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
	<?php echo CHtml::encode($data->email); ?>
	<br />


</div>