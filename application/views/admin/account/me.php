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
                        <a href="<?php anchor_to(ACCOUNT_CONTROLLER . '/me') ?>">
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
                            <div class="card-title">Atualize suas credenciais de conta</div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <form method="POST" action="<?php anchor_to(ACCOUNT_CONTROLLER . '/me') ?>">
                                        <div class="form-group">
                                            <label for="admin-fullName">Nome <span class="text-danger">*</span></label>
                                            <?php echo form_error('admin-fullName', '<br><span class="text-danger">', '</span>'); ?>
                                            <input id="admin-fullName" name="admin-fullName" placeholder="Digite o nome completo" value="<?php echo esc($user['fullName']) ?>" type="text" class="form-control">
                                            <small class="text-muted">Você só pode escolher um nome completo exclusivo.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="admin-email">E-Mail <span class="text-danger">*</span></label>
                                            <?php echo form_error('admin-email', '<br><span class="text-danger">', '</span>'); ?>
                                            <input id="admin-email" name="admin-email" placeholder="Digite seu e-mail" value="<?php echo esc($user['email']) ?>" type="email" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="admin-new-password">Nova Senha</label>
                                            <?php echo form_error('admin-new-password', '<br><span class="text-danger">', '</span>'); ?>
                                            <input id="admin-new-password" name="admin-new-password" placeholder="Escolha uma nova senha" type="password" class="form-control">
                                            <small class="text-muted">Escolha uma senha <u>forte</u> & <u>segura</u>. Use caracteres alfanuméricos e especiais.</small>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <label for="admin-password">Senha Atual <span class="text-danger">*</span></label>
                                            <?php echo form_error('admin-password', '<br><span class="text-danger">', '</span>'); ?>
                                            <input id="admin-password" name="admin-password" placeholder="Digite sua senha atual" type="password" class="form-control">
                                            <small class="text-muted">Isso é necessário para fazer qualquer alteração.</small>
                                        </div>
                                        <hr>
                                        <div class="form-group">
                                            <input type="hidden" name="submit" value="Submit">
                                            <button type="submit" class="btn btn-success"><i class="fas fa-check mr-1"></i> Atualizar conta</button>
                                        </div>
                                    </form>
                                </div>
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
<?php $this->load->view('admin/includes/footEnd'); ?>