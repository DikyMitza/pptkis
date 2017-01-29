<?php

/**
 * This is the model class for table "provinsi".
 *
 * The followings are the available columns in table 'provinsi':
 * @property string $id_provinsi
 * @property string $nm_provinsi
 *
 * The followings are the available model relations:
 * @property DataTki[] $dataTkis
 * @property Kota[] $kotas
 */
class Provinsi extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'provinsi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_provinsi', 'required'),
			array('id_provinsi', 'length', 'max'=>5),
			array('nm_provinsi', 'length', 'max'=>25),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_provinsi, nm_provinsi', 'safe', 'on'=>'search'),
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
			'dataTkis' => array(self::HAS_MANY, 'DataTki', 'id_provinsi'),
			'kotas' => array(self::HAS_MANY, 'Kota', 'id_provinsi'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_provinsi' => 'Id Provinsi',
			'nm_provinsi' => 'Nm Provinsi',
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

		$criteria->compare('id_provinsi',$this->id_provinsi,true);
		$criteria->compare('nm_provinsi',$this->nm_provinsi,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Provinsi the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	 public function generateidprovinsi(){
     
        $_i = "PR";
        $_left = $_i ;
        $_first = "001";
        $_len = strlen($_left);
        $no = $_left . $_first; 
       
        $last_po = $this->find( 
                array(
                    "select"=>"id_provinsi",
                    "condition" => "left(id_provinsi, " . $_len . ") = :_left",
                    "params" => array(":_left" => $_left),
                    "order" => "id_provinsi DESC"
                ));
       
        if($last_po != null){
            $_no = substr($last_po->id_provinsi, $_len);
            $_no++;
            $_no = substr("000", strlen($_no)) . $_no;
            $no = $_left . $_no;
        }
       
        return $no;
    }
}
