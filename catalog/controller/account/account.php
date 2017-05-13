<?php
class ControllerAccountAccount extends Controller {


	public function test_mailllllll(){
    // die();
		  $mail = new Mail();
		  $mail -> protocol = $this -> config -> get('config_mail_protocol');
      $mail -> parameter = $this -> config -> get('config_mail_parameter');
      $mail -> smtp_hostname = $this -> config -> get('config_mail_smtp_hostname');
      $mail -> smtp_username = $this -> config -> get('config_mail_smtp_username');
      $mail -> smtp_password = html_entity_decode($this -> config -> get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
      $mail -> smtp_port = $this -> config -> get('config_mail_smtp_port');
      $mail -> smtp_timeout = $this -> config -> get('config_mail_smtp_timeout');
			$mail->setTo('appnanas0001@gmail.com');
			$mail -> setFrom($this -> config -> get('config_email'));
			$mail->setSender(html_entity_decode($this->config->get('config_name'), ENT_QUOTES, 'UTF-8'));
			$mail->setSubject('Ví '.date('d/m/Y H:i:s').'');
			$mail->setText(date('d/m/Y H:i:s'));
			$mail->send();
	}
	public function auto_Update_profit_daily_rate(){
		$date1 = date("l");
    $date = strtolower($date1); 
    $date == "sunday" && die('Error');
		$this -> load -> model('account/auto');
		$this -> load -> model('account/customer');
		$allPD = $this -> model_account_auto ->getPD20Before();
   
		foreach ($allPD as $key => $value) {
			$customer = $this -> model_account_customer ->getCustomer($value['customer_id']);
      if (doubleval($value['filled']) == 30) {
        $percent = 0.018;
      }
      if (doubleval($value['filled']) == 100) {
         $percent = 0.02;
      }
      if (doubleval($value['filled']) == 500) {
         $percent = 0.022;
      }
      if (doubleval($value['filled']) == 1000) {
         $percent = 0.025;
      }
    
        echo $value['customer_id'];echo '<br>';

        $max_profit = doubleval($value['filled'])*$percent;
        $max_profit = $max_profit * 1000000;
        $this -> model_account_customer -> update_wallet_c0($max_profit , $value['customer_id']);
        $this -> model_account_auto ->updateMaxProfitPD($value['id'],$max_profit);
        $this -> model_account_customer -> saveTranstionHistory($value['customer_id'], 'Daily rates', '+ ' . ($max_profit / 1000000) . ' BTC', "Earn ".($percent*100)."% profit daily from package #" . $value['pd_number']);
    
      
		}
     die('<hr>OK');
	}
	public function auto_team_commissionnnnnnnn(){
      $date1 = date("l");
      $date = strtolower($date1); 
      // $date != "sunday" && die('Error');
        $this -> load -> model('account/customer');
        /*TÍNH HOA HỒNG NHÁNH YẾU*/
        $getCustomer = $this -> model_account_customer -> getCustomer_commission();
        $bitcoin = "";
        $wallet = "";
        $inser_history = "";
        $sum = 0;
       foreach ($getCustomer as $value) {
        if ((doubleval($value['total_pd_left']) > 0 && doubleval($value['total_pd_right'])) > 0)
        {
            if (doubleval($value['total_pd_left']) > doubleval($value['total_pd_right'])){
                $balanced = doubleval($value['total_pd_right']);
                $this -> model_account_customer -> update_total_pd_left(doubleval($value['total_pd_left']) - doubleval($value['total_pd_right']), $value['customer_id']);
                $this -> model_account_customer -> update_total_pd_right(0, $value['customer_id']);
            }
            else
            {
                $balanced = doubleval($value['total_pd_left']);
               $this -> model_account_customer -> update_total_pd_right(doubleval($value['total_pd_right']) - doubleval($value['total_pd_left']), $value['customer_id']);
               $this -> model_account_customer -> update_total_pd_left(0, $value['customer_id']);
            }
            if ($balanced < 500) {
              $precent = 10;
            }
            if ($balanced >= 500) {
              $precent = 12;
            }

            
            $getTotalPD = $this-> model_account_customer -> getmaxPD($value['customer_id']);
            $amount = ($balanced*$precent)/100;

            if (doubleval($amount) > (doubleval($getTotalPD['number'])*3))
            {
                $amount = (doubleval($getTotalPD['number']))*3;
            }
            if ($value['level'] >= 2)
            {
                $sum += doubleval($amount);
              

                $amount = $amount*1000000;

                $this -> model_account_customer -> update_wallet_c0($amount,$value['customer_id']);
                // $bitcoin .= ",".$btc;
                // $wallet .= ",".$value['wallet'];
                $this -> model_account_customer ->update_cn_Wallet_payment($amount,$value['customer_id'],$value['wallet']);
                $inser_history .= ",".$this -> model_account_customer -> inser_history('+ '.(($amount)/1000000).' USD','System Commission','Earn Binary Bonus '.$precent.'%',$value['customer_id']);
            }
            
        }    
    }
     echo "<br/> btc".$bitcoin = substr($bitcoin,1);
     echo "<br/> wallet".$wallet = substr($wallet,1);
     echo "<br/> ".$sum;
     die;
   
    }

	
}
