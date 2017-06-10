<?php 
   $self -> document -> setTitle('Team Network Summary'); 
   echo $self -> load -> controller('common/header'); 
   echo $self -> load -> controller('common/column_left'); 
   ?>
<div class="content-page">
    <div class="content">
        <div class="page-title-group">
            <h4 class="page-title">Team Network Summary
</h4>
            <h5 class="text-muted page-title-alt"></h5>
        </div>
        <div class="cb-page-content">
            <div class="container">
             <div class="row">
                    <div class="col-md-12">
                        <div class="card-box">
                            
                            <div class="card-box-content p-l-0 p-r-0 btn-compoenent Team">
                                <div class="row">
                                   
                                    <div class="col-sm-2 col-xs-4">
                                        <div class="item-quick-access ">
                                           <img src="catalog/view/theme/default/css/icons/3.png" style=" width: 39px; ">
                                           <p><a href="column-tree.html">Blank</a></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <div class="item-quick-access">
                                             <img src="catalog/view/theme/default/css/icons/2.png" style=" width: 28px; ">
                                             <p><a href="column-tree.html">InActive</a></p>
                                        </div>
                                    </div>
                                   
                                    <div class="col-sm-2 col-xs-4">
                                        <div class="item-quick-access">
                                             <img src="catalog/view/theme/default/css/icons/packe2.png" >
                                             <p><a href="column-tree.html">30 USD</a></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <div class="item-quick-access">
                                             <img src="catalog/view/theme/default/css/icons/packe3.png" >
                                             <p><a href="column-tree.html">100 USD</a></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <div class="item-quick-access">
                                             <img src="catalog/view/theme/default/css/icons/packe4.png" >
                                             <p><a href="column-tree.html">500 USD</a></p>
                                        </div>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <div class="item-quick-access">
                                             <img src="catalog/view/theme/default/css/icons/packe5.png" >
                                             <p><a href="column-tree.html">1000 USD</a></p>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
          <div class="row">
            <div class="col-md-6">
              <div class="card-box">
                <div class="card-box-head  border-b m-t-0">
                  <h4 class="header-title"><b>Number Team Network</b></h4>
                </div>
                <div class="card-box-content form-compoenent">
                  <div class="table-responsive data-table">
                    <table class="table table-bordred table-striped">
                      <thead>
                        <tr>
                          <th><b>#</b></th>
                          <th><b>Left</b></th>
                          <th><b>Right</b></th>
                          <th><b>Total</b></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td> <img src="catalog/view/theme/default/css/icons/3.png" style=" width: 41px; "></td>
                          <td><?php echo $total_binary_left ?></td>
                          <td><?php echo $total_binary_right ?></td>
                          <td><?php echo ($total_binary_left+$total_binary_right); ?></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="card-box">
                <div class="card-box-head  border-b m-t-0">
                  <h4 class="header-title"><b>Amount Team Network</b></h4>
                </div>
                <div class="card-box-content form-compoenent">
                     <div class="table-responsive data-table">
                    <table class="table table-bordred table-striped">
                      <thead>
                        <tr>
                          <th><b>#</b></th>
                          <th><b>Left</b></th>
                          <th><b>Right</b></th>
                          <th><b>Total</b></th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td> <img src="catalog/view/theme/default/css/icons/3.png" style=" width: 41px; "></td>
                          <td><?php echo $total_pd_left ?> BTC</td>
                          <td><?php echo $total_pd_right ?> BTC</td>
                          <td><?php echo ($total_pd_left+$total_pd_right); ?> BTC</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
        
          
          </div>
      </div>
   </div>
   <!-- End Row -->
   <!-- End row -->
</div>
<?php echo $self->load->controller('common/footer') ?>