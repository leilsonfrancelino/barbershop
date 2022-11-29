﻿<?php $this->load->view('admin/includes/head'); ?>
<div class="wrapper fullheight-side">
<?php $this->load->view('admin/includes/header');
$this->load->view('admin/includes/sidebar'); 
$this->load->view('admin/includes/navbar'); ?>

<!-- Page Content -->

<div class="main-panel">
    <div class="container">
        <div class="page-inner">
            <div class="page-header">
                <h4 class="page-title"><?php echo esc($page_title) ?></h4>
                <ul class="breadcrumbs">
                    <li class="nav-home">
                        <a href="<?php anchor_to(GENERAL_CONTROLLER . '/dashboard') ?>">
                            <i class="flaticon-home"></i>
                        </a>
                    </li>
                    <li class="separator">
                        <i class="flaticon-right-arrow"></i>
                    </li>
                    <li class="nav-home">
                        <a href="<?php anchor_to(BOOKINGS_CONTROLLER) ?>">
                        <?php echo esc($page_title) ?>
                        </a>
                    </li>
                </ul>
            </div>
            <?php $this->load->view('admin/includes/alert'); ?>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped mt-3">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Serviço</th>
                                            <th scope="col">Profissional</th>
                                            <th scope="col">Data</th>
                                            <th scope="col">Horário</th>
                                            <th scope="col">Adulto</th>
                                            <th scope="col">Criança</th>
                                            <th scope="col">Cliente</th>
                                            <th scope="col">Valor</th>
                                            <th scope="col">Status Serviço</th>
                                            <th scope="col">Status Pagamento</th>
                                            <th scope="col" class="text-right">Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(!$bookings){?>
                                            <tr>
                                                <td colspan="11" class="text-center"><h4 class="text-muted">Nenhum agendamento encontrado.</h4></td>
                                            </tr>
                                        <?php } else{?>
                                        <?php foreach ($bookings as $booking ){ ?>
                                        <tr>
                                            <td><?php echo esc($booking['id'], true) ?></td>
                                            <td><?php echo esc($booking['title'], true) ?></td>
                                            <td><?php if($booking['agents_id']==0 ||$booking['agents_id']==''){echo 'Any Agent';}else{echo esc($booking['agentName'], true);} ?></td>
                                            <td><?php echo esc($booking['date'], true) ?></td>
                                            <td><?php echo esc($booking['timing'], true) ?></td>
                                            <td><?php echo esc($booking['adults'], true) ?></td>
                                            <td><?php echo esc($booking['childrens'], true) ?></td>
                                            <td><?php echo esc($booking['fullName'], true) ?></td>
                                            <td><?php echo 'R$ '.($booking['adults'] + $booking['childrens'])*$booking['price'] ?></td>
                                            <td><?php if($booking['serviceStatus'] == '' || $booking['serviceStatus'] == '0'){ echo '<span class="badge badge-warning">Pendente</span>'; } else if($booking['serviceStatus'] == '1') { echo '<span class="badge badge-success">Confirmado</span>'; } else if($booking['serviceStatus'] == '2') { echo '<span class="badge badge-secondary">Cancelado</span>'; } ?></td>
                                            <td><?php if(!$booking['paymentStatus']){ echo '<span class="badge badge-danger">Aberto</span>'; } else { echo '<span class="badge badge-success">pago</span>'; } ?></td>
                                            <td class="text-right">
                                                <div class="dropdown">
                                                    <button type="button" class="btn btn-secondary btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-ellipsis-h"></i>
                                                    </button>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <?php if($booking['serviceStatus'] != '2' && !$booking['paymentStatus']) { ?>
                                                        <a href="<?php anchor_to(BOOKINGS_CONTROLLER . '/bookingPay/' . esc($booking['id'], true). '/true') ?>" class="btn btn-link btn-primary dropdown-item">Pagar</a>
                                                        <?php } ?>
                                                        <?php if($booking['serviceStatus'] != '2' && !$booking['serviceStatus']) { ?>
                                                        <a href="<?php anchor_to(BOOKINGS_CONTROLLER . '/bookingConfirm/' . esc($booking['id'], true). '/true') ?>" class="btn btn-link btn-primary dropdown-item">Confirmar</a>
                                                        <?php } ?>
                                                        <?php if($booking['serviceStatus'] != '2' && !$booking['serviceStatus']) { ?>
                                                        <a href="<?php anchor_to(BOOKINGS_CONTROLLER . '/bookingCancel/' . esc($booking['id'], true). '/true') ?>" class="btn btn-link btn-primary dropdown-item">Cancelar</a>
                                                        <?php } ?>
                                                        <button type="button" class="btn btn-link btn-danger dropdown-item deleteBookings" value="<?php echo esc($booking['id'], true) ?>">Excluir</button>
                                                    </div>
                                                </div>   
                                            </td>
                                        </tr>
                                        <?php }} ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- End Page Content -->

</div>
<?php $this->load->view('admin/includes/foot'); ?>
<script type="text/javascript" src="<?php admin_assets('js/plugin/sweetalert/sweetalert.min.js') ?>"></script>
<script type="text/javascript" src="<?php admin_assets('js/includes/alerts.js') ?>"></script>
<?php $this->load->view('admin/includes/footEnd'); ?>