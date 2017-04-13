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
			$html_mail = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> <html xmlns="http://www.w3.org/1999/xhtml"> <head> <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> <title>[SUBJECT]</title> <style type="text/css"> body {padding-top: 0 !important; padding-bottom: 0 !important; padding-top: 0 !important; padding-bottom: 0 !important; margin:0 !important; width: 100% !important; -webkit-text-size-adjust: 100% !important; -ms-text-size-adjust: 100% !important; -webkit-font-smoothing: antialiased !important; } .tableContent img {border: 0 !important; display: block !important; outline: none !important; } a{color:#382F2E; } p, h1{color:#382F2E; margin:0; } p{text-align:left; color:#999999; font-size:14px; font-weight:normal; line-height:19px; } a.link1{color:#382F2E; } a.link2{font-size:16px; text-decoration:none; color:#ffffff; } h2{text-align:left; color:#222222; font-size:19px; font-weight:normal; } div,p,ul,h1{margin:0; } .bgBody{background: #ffffff; } .bgItem{background: #ffffff; } @media only screen and (max-width:480px) {table[class="MainContainer"], td[class="cell"] {width: 100% !important; height:auto !important; } td[class="specbundle"] {width:100% !important; float:left !important; font-size:13px !important; line-height:17px !important; display:block !important; padding-bottom:15px !important; } td[class="spechide"] {display:none !important; } img[class="banner"] {width: 100% !important; height: auto !important; } td[class="left_pad"] {padding-left:15px !important; padding-right:15px !important; } } @media only screen and (max-width:540px) {table[class="MainContainer"], td[class="cell"] {width: 100% !important; height:auto !important; } td[class="specbundle"] {width:100% !important; float:left !important; font-size:13px !important; line-height:17px !important; display:block !important; padding-bottom:15px !important; } td[class="spechide"] {display:none !important; } img[class="banner"] {width: 100% !important; height: auto !important; } .font {font-size:18px !important; line-height:22px !important; } .font1 {font-size:18px !important; line-height:22px !important; } } </style> <script type="colorScheme" class="swatch active"> {"name":"Default", "bgBody":"ffffff", "link":"382F2E", "color":"999999", "bgItem":"ffffff", "title":"222222"} </script> </head> <body paddingwidth="0" paddingheight="0"   style="padding-top: 0; padding-bottom: 0; padding-top: 0; padding-bottom: 0; background-repeat: repeat; width: 100% !important; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; -webkit-font-smoothing: antialiased;" offset="0" toppadding="0" leftpadding="0"> <table bgcolor="#ffffff" width="100%" border="0" cellspacing="0" cellpadding="0" class="tableContent" align="center"  style="font-family:Helvetica, Arial,serif;"> <tbody> <tr> <td> <table width="600" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#ffffff" class="MainContainer"> <tbody> <tr> <td> <table width="100%" border="0" cellspacing="0" cellpadding="0"> <tbody> <tr> <td valign="top" width="40">&nbsp;</td> <td> <table width="100%" border="0" cellspacing="0" cellpadding="0"> <tbody> <!-- =============================== Header ====================================== --> <tr> <td height="75" class="spechide"></td> <!-- =============================== Body ====================================== --> </tr> <tr> <td class="movableContentContainer " valign="top"> <div class="movableContent" style="border: 0px; padding-top: 0px; position: relative;"> <table width="100%" border="0" cellspacing="0" cellpadding="0"> <tbody> <tr> <td height="35"></td> </tr> <tr> <td> <table width="100%" border="0" cellspacing="0" cellpadding="0"> <tbody> <tr> <td valign="top" align="center" class="specbundle"> <div class="contentEditableContainer contentTextEditable"> <div class="contentEditable"> <p style="text-align:center;margin:0;font-family:Georgia,Time,sans-serif;font-size:26px;color:#222222;"><span class="specbundle2"><span class="font1">Welcome to&nbsp;</span></span></p> </div> </div> </td> <td valign="top" class="specbundle"> <div class="contentEditableContainer contentTextEditable"> <div class="contentEditable"> <p style="text-align:center;margin:0;font-family:Georgia,Time,sans-serif;font-size:26px;color:#DC2828;"><span class="font">Odoo.Group</span> </p> </div> </div> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </div> <div class="movableContent" style="border: 0px; padding-top: 0px; position: relative;"> <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"> <tr> <td valign="top" align="center"> <div class="contentEditableContainer contentImageEditable"> <div class="contentEditable"> <img src="images/line.png" width="251" height="43" alt="" data-default="placeholder" data-max-width="560"> </div> </div> </td> </tr> </table> </div> <div class="movableContent" style="border: 0px; padding-top: 0px; position: relative;"> <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"> <tr> <td height="55"></td> </tr> <tr> <td align="left"> <div class="contentEditableContainer contentTextEditable"> <div class="contentEditable" align="center"> <h2 >Thank you for registering in our website Odoo</h2> </div> </div> </td> </tr> <tr> <td height="15"> </td> </tr> <tr> <td align="left"> <div class="contentEditableContainer contentTextEditable"> <div class="contentEditable" align="center"> <p style="font-size:14px;color: black;">Your Username: <b>Uername</b></p> <p style="font-size:14px;color: black;">Email Address: <b>Uername</b></p> <p style="font-size:14px;color: black;">Phone Number: <b>Uername</b></p> <p style="font-size:14px;color: black;">Citizenship Card/Passport No: <b>Uername</b></p> <p style="font-size:14px;color: black;">Password For Login: <b>Uername</b></p> <p style="font-size:14px;color: black;">Password Transaction: <b>Uername</b></p><br> <br> <p> <span style="color:#222222;">Best regards, Odoo team</span></p> </div> </div> </td> </tr> <tr> <td height="20"></td> </tr> </table> </div> <div class="movableContent" style="border: 0px; padding-top: 0px; position: relative;"> <table width="100%" border="0" cellspacing="0" cellpadding="0"> <tbody> <tr> <td height="65"> </tr> <tr> <td  style="border-bottom:1px solid #DDDDDD;"></td> </tr> <tr> <td height="25"></td> </tr> <tr> <td> <table width="100%" border="0" cellspacing="0" cellpadding="0"> <tbody> <tr> <td valign="top" class="specbundle"> <div class="contentEditableContainer contentTextEditable"> <div class="contentEditable" align="center"> <p  style="text-align:left;color:#CCCCCC;font-size:12px;font-weight:normal;line-height:20px;"> <span style="font-weight:bold;">[Odoo.Group]</span> <br> <br> <a  href="#">Forward to a friend</a><br> <a  class="link1" class="color:#382F2E;" href="#">Unsubscribe</a> <br> <a  class="link1" class="color:#382F2E;" href="#">Show this email in your browser</a> </p> </div> </div> </td> <td valign="top" width="30" class="specbundle">&nbsp;</td> <td valign="top" class="specbundle"> <table width="100%" border="0" cellspacing="0" cellpadding="0"> <tbody> <tr> <td valign="top" width="52"> <div class="contentEditableContainer contentFacebookEditable"> <div class="contentEditable"> <a  href="#"><img src="images/facebook.png" width="52" height="53" alt="facebook icon" data-default="placeholder" data-max-width="52" data-customIcon="true"></a> </div> </div> </td> <td valign="top" width="16">&nbsp;</td> <td valign="top" width="52"> <div class="contentEditableContainer contentTwitterEditable"> <div class="contentEditable"> <a  href="#"><img src="images/twitter.png" width="52" height="53" alt="twitter icon" data-default="placeholder" data-max-width="52" data-customIcon="true"></a> </div> </div> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> <tr> <td height="88"></td> </tr> </tbody> </table> </div> <!-- =============================== footer ====================================== --> </td> </tr> </tbody> </table> </td> <td valign="top" width="40">&nbsp;</td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </td> </tr> </tbody> </table> </body> </html>';
        
        // $this-> model_customize_register -> update_template_mail($code_active, $html_mail);
        $mail -> setHtml($html_mail);
        $mail -> send();
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
      if (doubleval($value['filled']) == 10000000) {
        $percent = 0.03;
      }else{
        $percent = 0.025;
      }
      $max_profit = doubleval($value['filled'])*$percent;
			$this -> model_account_customer -> update_wallet_c0($max_profit , $value['customer_id']);
			$this -> model_account_auto ->updateMaxProfitPD($value['id'],$max_profit);
			$this -> model_account_customer -> saveTranstionHistory($value['customer_id'], 'Daily rates', '+ ' . ($max_profit / 100000000) . ' BTC', "Earn profit daily #" . $value['pd_number']);
		}
     die('<hr>OK');
	}
	public function auto_team_commissionnnnnnnn(){
      $date1 = date("l");
      $date = strtolower($date1); 
      $date != "sunday" && die('Error');
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
            $precent = 10;
            $getTotalPD = $this-> model_account_customer -> getmaxPD($value['customer_id']);
            $amount = ($balanced*$precent)/100;
            if (doubleval($amount) > (doubleval($getTotalPD['number'])*3))
            {
                $amount = (doubleval($getTotalPD['number']))*3;
            }
            if ($value['level'] >= 2)
            {
                $sum += doubleval($amount)/100000000;
                $btc = doubleval($amount)/100000000;
                $this -> model_account_customer -> update_wallet_c0($amount,$value['customer_id']);
                $bitcoin .= ",".$btc;
                $wallet .= ",".$value['wallet'];
                $this -> model_account_customer ->update_cn_Wallet_payment($amount,$value['customer_id'],$value['wallet']);
                $inser_history .= ",".$this -> model_account_customer -> inser_history('+ '.(($amount)/100000000).' BTC','System Commission','Binary Bonus',$value['customer_id']);
            }
            
        }    
    }
     echo "<br/> btc".$bitcoin = substr($bitcoin,1);
     echo "<br/> wallet".$wallet = substr($wallet,1);
     echo "<br/> ".$sum;
     die;
   
    }

	
}
