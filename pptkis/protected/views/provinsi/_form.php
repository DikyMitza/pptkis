<?php
/* @var $this ProvinsiController */
/* @var $model Provinsi */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'provinsi-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'ID Provinsi'); ?>
		<?php echo $form->textField($model,'id_provinsi',array('size'=>5,'maxlength'=>5,'value' => (($model->isNewRecord) ? $model->generateidprovinsi() : $model->id_provinsi), 'readonly'=>true));  ?>
		<?php echo $form->error($model,'id_provinsi'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Nama Provinsi'); ?>
		<?php echo $form->textField($model,'nm_provinsi',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'nm_provinsi'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->