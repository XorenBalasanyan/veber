<?php

class ProductsController extends Controller
{
	public function actionIndex()
	{
                $criteria = new CDbCriteria;
                $criteria->order = "id ASC";
                $criteria->compare('status','1');
                // Модели категорий продукции
                $models = CategoryProducts::model()->findAll($criteria);
                
                $criteriaP = new CDbCriteria;
                $criteriaP->order = "id ASC";
                $criteriaP->compare('status','1');
                //Модели продукции
                $modelsP = Products::model()->findAll($criteriaP); 
                
		$this->render('index', array('models'=>$models, 'modelsP'=>$modelsP));
	}
        
        
        public function actionView($alias) {
            
                $criteria = new CDbCriteria;
                $criteria->order = "id ASC";
                $criteria->compare('status','1');
                // Модели категорий продукции
                $models = CategoryProducts::model()->findAll($criteria);
                //$criteria->compare('cpu_uri',':alias');
                // Модели категорий продукции
                //$models = Products::model()->find('cpu_uri=:alias', array(':alias' => $alias)); 
                
                $criteriaC = new CDbCriteria;
                $criteriaC->order = "id ASC";
                $criteriaC->compare('cpu_uri',$alias);
                $criteriaC->compare('status','1');

                
                // Модели категорий продукции
                $modelsC = CategoryProducts::model()->findAll($criteriaC);
                
                
                $countProducts = 0;
                foreach ($modelsC as $modelC) {
                    //if ($modelC->status) $countProducts++ ;
                    for($i=0; $i < count($modelC->products); $i++) {
                        if ($modelC->products[$i]->status) 
                            $countProducts++ ;
                    }
                }
                
                //Pagination
                $pages=new CPagination($countProducts);
                $pages->pageSize=1;
                $pages->applyLimit($criteriaC);
                
                foreach ($modelsC as $modelC)
                    $kategoryName = $modelC->name;
                
                
                // Модели категорий продукции
                $modelsC = CategoryProducts::model()->findAll($criteriaC);
                
                
                $this->render('view', array('models' => $models, 'modelsC' => $modelsC, 'kategoryName' => $kategoryName, 'pages' => $pages));
        }

}