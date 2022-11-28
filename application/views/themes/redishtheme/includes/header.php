<?php $uri = strtolower($this->uri->segment(1)); ?>
<header class="headerMain">
	<div class="headerMainInner <?php echo_if($uri == 'enduser' || $uri == 'userbooking', 'headerMainSticky fadeInDown animated'); ?>">
		<nav class="navbar">
			<div class="container">
				<a href="<?php echo base_url()?>" class="brandLogo"><img src="<?php $assets('images/logo.png'); ?>" alt=""></a>
				<a href="<?php echo base_url()?>" class="stickyLogo"><img src="<?php $assets('images/logo.png'); ?>" alt=""></a>
				<div class="ml-auto d-flex align-items-center">
					
					
				</div>
			</div>
		</nav>
	</div>

</header>