<?php $uri = strtolower($this->uri->segment(1).'/'.$this->uri->segment(2)); ?>
<div class="sidebar sidebar-style-2" data-background-color="white">			
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<ul class="nav nav-primary">
						<li class="nav-item <?php echo_if($uri == GENERAL_CONTROLLER . '/dashboard', 'active'); ?>">
							<a href="<?php anchor_to(GENERAL_CONTROLLER . '/dashboard') ?>">
								<i class="fas fa-home"></i>
								<p>Painel</p>
							</a>
						</li>
						<li class="nav-item <?php echo_if($uri == GENERAL_CONTROLLER . '/settings', 'active'); ?>">
							<a href="<?php anchor_to(GENERAL_CONTROLLER . '/settings') ?>">
								<i class="fas fa-cog"></i>
								<p>Configurações Gerais</p>
							</a>
                        </li>
						<!--<li class="nav-item <?php echo_if($uri == GENERAL_CONTROLLER . '/themes' || $uri == GENERAL_CONTROLLER . '/upload_theme', 'active'); ?>">
							<a href="<?php anchor_to(GENERAL_CONTROLLER . '/themes') ?>">
								<i class="fas fa-brush"></i>
								<p>Tema</p>
							</a>
						</li> -->
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Agendamentos</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == BOOKINGS_CONTROLLER . '/', 'active'); ?>">
							<a href="<?php anchor_to(BOOKINGS_CONTROLLER) ?>">
								<i class="far fa-credit-card"></i>
								<p>Todos os Agendamentos</p>
							</a>
						</li>
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Serviços</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == SERVICE_CONTROLLER . '/services' || $uri == SERVICE_CONTROLLER . '/addservice' || $uri == SERVICE_CONTROLLER . '/editservice', 'active'); ?>">
							<a href="<?php anchor_to(SERVICE_CONTROLLER) ?>">
								<i class="fas fa-shopping-basket"></i>
								<p>Todos os Serviços</p>
							</a>
						</li>
						<li class="nav-item <?php echo_if($uri == AGENTS_CONTROLLER . '/' || $uri == AGENTS_CONTROLLER . '/addagent' || $uri == AGENTS_CONTROLLER . '/editagent', 'active'); ?>">
							<a href="<?php anchor_to(AGENTS_CONTROLLER) ?>">
								<i class="fas fa-users"></i>
								<p>Todos os profissionais</p>
							</a>
						</li>
						<li class="nav-item <?php echo_if($uri == CONTACT_CONTROLLER . '/contactdetails', 'active'); ?>">
							<a href="<?php anchor_to(CONTACT_CONTROLLER) ?>">
								<i class="fas fa-address-card"></i>
								<p>Configurar Contato</p>
							</a>
						</li>
					<!--    <li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Galeria</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == GALLERY_CONTROLLER . '/categories', 'active'); ?>">
							<a href="<?php anchor_to(GALLERY_CONTROLLER. '/categories') ?>">
								<i class="fas fa-image"></i>
								<p>Categoria da Galeria</p>
							</a>
						</li>
						<li class="nav-item <?php echo_if($uri == GALLERY_CONTROLLER . '/listgallery' || $uri == GALLERY_CONTROLLER . '/addimg' || $uri == GALLERY_CONTROLLER . '/editimg', 'active'); ?>">
							<a href="<?php anchor_to(GALLERY_CONTROLLER) ?>">
								<i class="fas fa-image"></i>
								<p>Galeria de Imagens</p>
							</a>
						</li> 
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Blog</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == ADMINBLOG_CONTROLLER, 'active'); ?>">
							<a href="<?php anchor_to(ADMINBLOG_CONTROLLER) ?>">
								<i class="fas fa-th-large"></i>
								<p>Postagens no blog</p>
							</a>
						</li>
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">CONFIGURAÇÕES DE LAYOUT</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/social_keys', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/social_keys') ?>">
								<i class="fas fa-key"></i>
								<p>Chaves de login sociais</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/pages', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/pages') ?>">
								<i class="fas fa-layer-group"></i>
								<p>Configurar página</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/analytics', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/analytics') ?>">
								<i class="fas fa-chart-bar"></i>
								<p>Configurar análise</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/meta_tags', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/meta_tags') ?>">
								<i class="fas fa-code"></i>
								<p>Configurr metatags</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/email', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/email') ?>">
								<i class="fas fa-at"></i>
								<p>Configurar e-mail</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/comment_settings', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/comment_settings') ?>">
								<i class="fas fa-comments"></i>
								<p>Configurar comentários</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/recaptcha', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/recaptcha') ?>">
								<i class="fas fa-unlock"></i>
								<p>Configurar Recaptcha</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == LAYOUT_CONTROLLER . '/ads', 'active'); ?>">
							<a href="<?php anchor_to(LAYOUT_CONTROLLER . '/ads') ?>">
								<i class="fas fa-expand"></i>
								<p>Configurar anúncio</p>
							</a>
						</li> -->
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Admin</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == ACCOUNT_CONTROLLER . '/me', 'active'); ?>">
							<a href="<?php anchor_to(ACCOUNT_CONTROLLER . '/me') ?>">
								<i class="fas fa-user"></i>
								<p>Minha Conta</p>
							</a>
						</li>
						<li class="nav-item <?php echo_if($uri == CLIENTS_CONTROLLER . '/index', 'active'); ?>">
							<a href="<?php anchor_to(CLIENTS_CONTROLLER) ?>">
								<i class="fas fa-users"></i>
								<p>Clientes</p>
							</a>
						</li>
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">PEDIDOS/PAGAMENTOS</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == PAYMENTS_CONTROLLER . '/', 'active'); ?>">
							<a href="<?php anchor_to(PAYMENTS_CONTROLLER) ?>">
								<i class="far fa-credit-card"></i>
								<p>Todos os pagamentos</p>
							</a>
						</li>
						<!--<li class="nav-item <?php echo_if($uri == PAYMENTS_CONTROLLER . '/stripe', 'active'); ?>">
							<a href="<?php anchor_to(PAYMENTS_CONTROLLER . '/stripe') ?>">
								<i class="fab fa-stripe"></i>
								<p>Configurações de faixa</p>
							</a>
						</li> -->
						<!--<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
						 	<h4 class="text-section">Outros</h4>
                        </li>
						<li class="nav-item <?php echo_if($uri == UPDATES_CONTROLLER . '/main', 'active'); ?>">
							<a href="<?php anchor_to(UPDATES_CONTROLLER . '/main') ?>">
								<i class="fas fa-wrench"></i>
								<p>Atualizar script</p>
							</a>
                        </li>
						<li class="nav-item <?php echo_if($uri == GENERAL_CONTROLLER . '/purge_cache', 'active'); ?>">
							<a href="<?php anchor_to(GENERAL_CONTROLLER . '/purge_cache') ?>">
								<i class="fas fa-trash-alt"></i>
								<p>Limpar cache</p>
							</a>
                        </li> -->
                        
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->