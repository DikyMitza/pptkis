<?php

/**
 * This is the model class for table "kota".
 *
 * The followings are the available columns in table 'kota':
 * @property string $id_kota
 * @property string $id_provinsi
 * @property string $nm_kota
 *
 * The followings are the available model relations:
 * @property DataTki[] $dataTkis
 * @property Provinsi $idProvinsi
 */
class Kota extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'kota';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_kota', 'required'),
			array('id_kota, id_provinsi', 'length', 'max'=>5),
			array('nm_kota', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_kota, id_provinsi, nm_kota', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'dataTkis' => array(self::HAS_MANY, 'DataTki', 'id_kota'),
			'idProvinsi' => array(self::BELONGS_TO, 'Provinsi', 'id_provinsi'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_kota' => 'Id Kota',
			'id_provinsi' => 'Id Provinsi',
			'nm_kota' => 'Nm Kota',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_kota',$this->id_kota,true);
		$criteria->compare('id_provinsi',$this->id_provinsi,true);
		$criteria->compare('nm_kota',$this->nm_kota,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Kota the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
