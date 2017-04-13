<?php $self -> document -> setTitle("Invesment Detail"); echo $self -> load -> controller('common/header'); echo $self -> load -> controller('common/column_left'); ?>

<div class="content-page">
        <div class="content">
   
 
   <div class="page-title-group">
                <h4 class="page-title">Investment</h4>
                <h5 class="text-muted page-title-alt"></h5>
            </div>
   
         <div class="container">
            <?php if(count($pds) > 0){?> 
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card-box">
                                
                                <div class="card-box-content form-compoenent">
                                    
                                    
                                    
                                    <div class="table-responsive data-table" id="no-more-tables">
                                        <table class="table table-bordred table-striped">
                                            <thead>
                                               <tr>
                                                <th>#</th>
                                                    <th>Receipt No.</th>
                                                    <th>Package</th>
                                                  <th>Date Created</th>
                                                  <!-- <th>Expiration Date</th> -->
                                                  <th>Amount</th>
                                                  <th>Profit</th>
                                                  <!-- <th>Time</th> -->
                                                  <th>Status</th>
                                               </tr>
                                            </thead>
                                            <tbody>
                                                
                                               <?php $stt = 0; foreach ($pds as $value=> $key){?> 
                                                   <tr>
                                                   <td data-title="#"><?php $stt++; echo $stt; ?></td>
                                                    <td data-title="Receipt No."><?php echo $key['pd_number'] ?></td>
                                                     <td data-title="Package">
                                                     <?php if (($key['filled']) == 2000000) {
                                                          echo 'Starter';
                                                        }
                                                        if (($key['filled']) == 5000000) {
                                                          echo 'Merchant';
                                                        }
                                                        if (($key['filled']) == 10000000) {
                                                          echo 'Enterprise';
                                                        }
                                                       ?>
                                  
                                </td>
                                                    <td data-title="Date Created"><?php echo date("l jS \of F Y ", strtotime($key['date_added'])); ?></td>
                                                     <!-- <td data-title="Expiration Date"><?php echo date("l jS \of F Y ", strtotime($key['date_finish'])); ?></td>  -->
                                                    <td data-title="Amount">
                                                        <?php echo (doubleval($key['filled']) / 100000000) ?> BTC
                                                    </td>
                                                    <td data-title="Profit"> <?php echo (doubleval($key['max_profit']) / 100000000) ?> BTC</td>
                                              
                                                    <!-- <td data-title="Time"> <span style="color:; font-size:15px;" class="text-warning countdown" data-countdown="<?php echo  $key['date_finish'] ?>"> </span> </td> -->
                                                    <td data-title="Status">
                                                         <?php if (($key['status']) == 0) { ?>
                                  <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $key['id'] ?>"> <button class="btn btn-danger btn-sm">Pay now</button> </form> 
                                  <?php

                              }else{
                                echo '<a href="javascript:void(0)" class="btn btn-info btn-sm">Paid</a>';
                            
                                } ?>

                                                    </td>
                                                   </tr>
                                                   <?php }?> 
                                              
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row mob-center">
                                       
                                        <div class="col-sm-12 tex-right">
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <!-- Table Ends -->
            
                    
                    <!-- Table Ends -->
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            
                    <div class="columns">
                    <?php $packet = $self -> check_packet_pd(2000000);?>
                     <?php if(count($packet) > 0) { ?>
                            <div class="ribbon-wrapper">
                                <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design">Watting</div>
                                <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                                <?php }?>
                            </div>
                        <?php }?>
                      <ul class="price">
                        <li class="header" style="background-color:#75526b">STARTER</li>
                        <li class="grey">0.02 BTC/70 days</li>
                        <li>2.2% Daily</li>
                        <li>Referral Program 5%</li>
                        <li>Binary Bonuses 10%</li>
                      
                        <li class="grey">
                       
                         <?php if (count($packet) === 0) {?> 
                          <form method="GET" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="0"> <button class="btn btn-info">Upgrade Now</button> </form>
                          <?php } else {?> 
                          <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>"> <button class="btn btn-info">Reviews</button> </form>
                          <?php } ?> 
                        </li>
                      </ul>
                    </div>

                    <div class="columns">
                    <?php $packet = $self -> check_packet_pd(5000000); 
                     ?>
                     <?php if(count($packet) > 0) { ?>
                            <div class="ribbon-wrapper">
                                <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design">Watting</div>
                                <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                                <?php }?>
                            </div>
                        <?php }?>
                      <ul class="price">
                      
                        <li class="header" style="background-color:#75526b">MERCHANT</li>
                        <li class="grey">0.05 BTC/70 days</li>
                        <li>2.5% Daily</li>
                        <li>Referral Program 5%</li>
                        <li>Binary Bonuses 10%</li>
                        
                        <li class="grey">
                         <?php if (count($packet) === 0) {?> 
                          <form method="GET" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="1"> <button class="btn btn-info">Upgrade Now</button> </form>
                          <?php } else {?> 
                          <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>"> <button class="btn btn-info">Reviews</button> </form>
                          <?php } ?> 
                          </li>
                      </ul>
                    </div>

                    <div class="columns">
                     <?php $packet = $self -> check_packet_pd(10000000) ;?>
                     <?php if(count($packet) > 0) { ?>
                            <div class="ribbon-wrapper">
                                <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design">Watting</div>
                                <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                                <?php }?>
                            </div>
                        <?php }?>
                      <ul class="price">
                        <li class="header" style="background-color:#75526b">ENTERPRISE</li>
                        <li class="grey">0.1 BTC/70 days</li>
                        <li>3% Daily</li>
                        <li>Referral Program 5%</li>
                        <li>Binary Bonuses 10%</li>
                        
                        <li class="grey">
                         <?php if (count($packet) === 0) {?> 
                          <form method="GET" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="2"> <button class="btn btn-info">Upgrade Now</button> </form>
                          <?php } else {?> 
                          <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>"> <button class="btn btn-info">Reviews</button> </form>
                          <?php } ?> 
                        </li>
                      </ul>
                    </div>
                        </div>
                    </div>
                </div>
  
        

 </div>
</div><?php echo $self->load->controller('common/footer') ?>