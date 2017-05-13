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
                                
                                <div class="">
                                    
                                    
                                    
                                    <div class="table-responsive data-table" id="no-more-tables">
                                        <table class="table table-bordred table-striped">
                                            <thead>
                                               <tr>
                                                <th>#</th>
                                                    <th>Receipt No.</th>
                                                
                                                  <th>Date Created</th>
                                                  <th style=" width: 165px; ">Expiration Days</th>
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
                                                
                                                    <td data-title="Date Created"><?php echo date("l jS \of F Y ", strtotime($key['date_added'])); ?></td>
                                                    <td data-title="Expiration Days" style=" text-align: center; "><?php echo $key['cycle'] ?></td>
                                                     <!-- <td data-title="Expiration Date"><?php echo date("l jS \of F Y ", strtotime($key['date_finish'])); ?></td>  -->
                                                    <td data-title="Amount">
                                                        <?php echo (doubleval($key['filled']) ) ?> USD
                                                    </td>
                                                    <td data-title="Profit"> <?php echo (doubleval($key['max_profit']) / 100000000) ?> USD</td>
                                              
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
                            
                    <div class="col-md-3 col-sm-6 col-xs-12">
                    <?php $packet = $self -> check_packet_pd(30);?>
                    <?php $count_package = $self -> count_check_packet_pd(30);?>
                     <?php if(count($packet) > 0) { ?>
                            <div class="ribbon-wrapper">
                                <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design">Watting</div>
                                <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                                <?php }?>

                            </div>
                        <?php }?>
                         <?php if (intval($count_package['number']) > 0) { ?>
               <div class="ribbon-wrapper">
                <div class="ribbon-design red" style="background-color:#e74b57">Actived <span style=" border: 1px solid #f00; padding: 4px 7px; border-radius: 13px; background: #202a3a; "><?php echo $count_package['number']; ?></span></div>
               </div>
                <?php }?> 
                      <ul class="price">
                        <li class="header" style="background-color:#75526b">Plan 01</li>
                        <li class="grey">30 USD/70 days</li>
                        <li>1.8% Daily</li>
                        <li>Referral Program 10% F1, 3% F2</li>
                        <li>Binary Bonuses 10% - 15%</li>
                      
                        <li class="grey">
                       
                         <?php if (count($packet) === 0) {?> 
                          <form method="GET" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="0"> <button class="btn btn-info">Upgrade Now</button> </form>
                          <?php } else {?> 
                          <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>"> <button class="btn btn-danger">Pay now</button> </form>
                          <?php } ?> 
                        </li>
                      </ul>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12">
                    <?php $packet = $self -> check_packet_pd(100); 
                   
                     ?>
                      <?php $count_package = $self -> count_check_packet_pd(100);?>
                     <?php if(count($packet) > 0) { ?>
                            <div class="ribbon-wrapper">
                                <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design">Watting</div>
                                <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                                <?php }?>
                            </div>
                        <?php }?>
                         <?php if (intval($count_package['number']) > 0) { ?>
               <div class="ribbon-wrapper">
                <div class="ribbon-design red" style="background-color:#e74b57">Actived <span style=" border: 1px solid #f00; padding: 4px 7px; border-radius: 13px; background: #202a3a; "><?php echo $count_package['number']; ?></span></div>
               </div>
                <?php }?> 
                      <ul class="price">
                      
                        <li class="header" style="background-color:#75526b">Plan 02</li>
                        <li class="grey">100 USD/70 days</li>
                        <li>2.0% Daily</li>
                        <li>Referral Program 10% F1, 5% F2</li>
                        <li>Binary Bonuses 10% - 15%</li>
                        
                        <li class="grey">
                         <?php if (count($packet) === 0) {?> 
                          <form method="GET" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="1"> <button class="btn btn-info">Upgrade Now</button> </form>
                          <?php } else {?> 
                          <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>"> <button class="btn btn-danger">Pay now</button> </form>
                          <?php } ?> 
                          </li>
                      </ul>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12">
                     <?php $packet = $self -> check_packet_pd(500) ;?>
                     <?php $count_package = $self -> count_check_packet_pd(500);?>
                     <?php if(count($packet) > 0) { ?>
                            <div class="ribbon-wrapper">
                                <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design">Watting</div>
                                <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                                <?php }?>
                            </div>
                        <?php }?>
                         <?php if (intval($count_package['number']) > 0) { ?>
               <div class="ribbon-wrapper">
                <div class="ribbon-design red" style="background-color:#e74b57">Actived <span style=" border: 1px solid #f00; padding: 4px 7px; border-radius: 13px; background: #202a3a; "><?php echo $count_package['number']; ?></span></div>
               </div>
                <?php }?> 
                      <ul class="price">
                        <li class="header" style="background-color:#75526b">Plan 03</li>
                        <li class="grey">500 USD/70 days</li>
                        <li>2.2% Daily</li>
                        <li>Referral Program 10% F1, 3% F2</li>
                        <li>Binary Bonuses 10% - 15%</li>
                        
                        <li class="grey">
                         <?php if (count($packet) === 0) {?> 
                          <form method="GET" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="2"> <button class="btn btn-info">Upgrade Now</button> </form>
                          <?php } else {?> 
                          <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>"> <button class="btn btn-danger">Pay now</button> </form>
                          <?php } ?> 
                        </li>
                      </ul>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                     <?php $packet = $self -> check_packet_pd(1000) ;?>
                     <?php $count_package = $self -> count_check_packet_pd(1000);?>
                     <?php if(count($packet) > 0) { ?>
                            <div class="ribbon-wrapper">
                                <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design">Watting</div>
                                <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                                <?php }?>
                            </div>
                        <?php }?>
                         <?php if (intval($count_package['number']) > 0) { ?>
               <div class="ribbon-wrapper">
                <div class="ribbon-design red" style="background-color:#e74b57">Actived <span style=" border: 1px solid #f00; padding: 4px 7px; border-radius: 13px; background: #202a3a; "><?php echo $count_package['number']; ?></span></div>
               </div>
                <?php }?> 
                      <ul class="price">
                        <li class="header" style="background-color:#75526b">Plan 04</li>
                        <li class="grey">1,000 USD/80 days</li>
                        <li>2.5% Daily</li>
                        <li>Referral Program 10% F1, 3% F2</li>
                        <li>Binary Bonuses 10% - 15%</li>
                        
                        <li class="grey">
                         <?php if (count($packet) === 0) {?> 
                          <form method="GET" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="3"> <button class="btn btn-info">Upgrade Now</button> </form>
                          <?php } else {?> 
                          <form method="GET" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>"> <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>"> <button class="btn btn-danger">Pay now</button> </form>
                          <?php } ?> 
                        </li>
                      </ul>
                    </div>
                        </div>
                    </div>
                </div>
  
        

 </div>
</div><?php echo $self->load->controller('common/footer') ?>