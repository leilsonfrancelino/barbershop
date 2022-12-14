<?php $this->load->view('admin/includes/head'); ?>
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
                        <a href="<?php anchor_to(AGENTS_CONTROLLER) ?>">
                        <?php echo esc($page_title) ?>
                        </a>
                    </li>
                </ul>
            </div>
            <?php $this->load->view('admin/includes/alert'); ?>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title float-left">Profissionais</div>
                            <a href="<?php anchor_to(AGENTS_CONTROLLER . '/addagent') ?>" class="btn btn-primary float-right"><i class="fas fa-plus mr-2"></i> Adicionar Profissional</a>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped mt-3">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Nome</th>
                                            <th scope="col">Descri????o</th>
                                            <th scope="col">Experi??ncia</th>
                                            <th scope="col">Total Agendamentos</th>
                                            <th scope="col">A????o</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(!$agents){?>
                                            <tr>
                                                <td colspan="6" class="text-center"><h4 class="text-muted">No Agent Found</h4></td>
                                            </tr>
                                        <?php } else{?>
                                        <?php foreach ($agents as $agent ){ ?>
                                        <tr>
                                            <td><?php echo esc($agent['id'], true) ?></td>
                                            <td><img src="<?php uploads('img/agents/'.esc($agent['agentImage'], true)) ?>" class="img-thumbnail mr-2 rounded-circle" width="45px"><?php echo esc($agent['agentName'], true) ?></td>
                                            <td><div class="agentDetails"><?php echo esc($agent['agentDetail'], true) ?></div></td>
                                            <td><?php echo esc($agent['experience'], true) ?> Years</td>
                                            <td><?php echo esc($agent['totalBookings'], true) ?></td>
                                            <td>
                                                <a href="<?php anchor_to(AGENTS_CONTROLLER . '/editagent/' . $agent['id']) ?>" data-toggle="tooltip" data-placement="top" title="Editar" class="btn btn-link btn-primary btn-lg">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                <button type="button" class="btn btn-link btn-danger deleteAgent" data-toggle="tooltip" data-placement="top" title="Excluir" value="<?php echo esc($agent['id'], true) ?>"><i class="fa fa-times"></i></button>
                                            </td>
                                        </tr>
                                        <?php } }?>
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