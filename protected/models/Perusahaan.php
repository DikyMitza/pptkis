<?php

/**
 * This is the model class for table "perusahaan".
 *
 * The followings are the available columns in table 'perusahaan':
 * @property string $id_perusahaan
 * @property string $nm_perusahaan
 * @property string $alamat
 * @property string $telp
 * @property string $fax
 * @property string $email
 *
 * The followings are the available model relations:
 * @property JobOrder[] $jobOrders
 */
class Perusahaan extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'perusahaan';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_perusahaan', 'required'),
			array('id_perusahaan', 'length', 'max'=>5),
			array('nm_perusahaan, email', 'length', 'max'=>25),
			array('alamat', 'length', 'max'=>100),
			array('telp, fax', 'length', 'max'=>20),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_perusahaan, nm_perusahaan, alamat, telp, fax, email', 'safe', 'on'=>'search'),
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
			'jobOrders' => array(self::HAS_MANY, 'JobOrder', 'id_perusahaan'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_perusahaan' => 'Id Perusahaan',
			'nm_perusahaan' => 'Nm Perusahaan',
			'alamat' => 'Alamat',
			'telp' => 'Telp',
			'fax' => 'Fax',
			'email' => 'Email',
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

		$criteria->compare('id_perusahaan',$this->id_perusahaan,true);
		$criteria->compare('nm_perusahaan',$this->nm_perusahaan,true);
		$criteria->compare('alamat',$this->alamat,true);
		$criteria->compare('telp',$this->telp,true);
		$criteria->compare('fax',$this->fax,true);
		$criteria->compare('email',$this->email,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Perusahaan the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
