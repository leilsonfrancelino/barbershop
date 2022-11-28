<?php $theme_view('includes/head'); ?>
<link rel="stylesheet" href="<?php $assets('css/lightbox.css'); ?>">
<?php $theme_view('includes/headEnd'); ?>
<?php $theme_view('includes/header'); ?>
	
	<div class="mainSection" id="home">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<!-- /formDataMain <h1>Hair & <br>Beauty</h1>
					<p>We are waiting for you. Please make an Appointment here.<p> -->
					<?php if($added = $this->session->flashdata('added')){
						$added_class = $this->session->flashdata('added_class');
					?>
						<div class="alert <?php echo esc($added_class, true);?>"><?php echo esc($added, true);?></div>
					<?php
					}
					?>
					<div class="selectionBoxMain" style="margin-top: -95px;">
						<form id="serviceUserForm" method="post" action="<?php echo base_url('homepage/submitData');?>">
						<div class="formDataMain">
							<div class="singleInput form-group">
								<select class="custom-select selectBookNow" id="selectBookNow" name="serviceTitle" required>
									<option value="">Selecione o serviço</option>
									<?php foreach ($serviceList as $servList ){ ?>
										<option value="<?php echo esc($servList['id'], true)?>" label="<?php echo esc($servList['title'], true)?>"><?php echo esc($servList['title'], true)?></option>
									<?php }?>
								</select>
								<span class="iconbadge"><span class="icon-shop"></span></span>
								<span class="iconArrow"><span class="icon-cheveron-down"></span></span>
							</div>
							<small id="sTitleError" class="form-text text-danger d-none">Selecione um serviço pelo menos.</small>
							<div class="row">
								<div class="col-lg-6">
									<div class="form-group">
										<label for="">Adulto</label>
										<input id="adultsVal" disabled data-attr="" type="number" value="0" min="1" step="1" name="serviceAdult"/>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<label for="">Criança</label>
										<input id="childVal" disabled data-attr="" type="number" value="0" min="0" step="1" name="serviceChildren"/>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-6">
									<label for="">Selecione a data</label>
									<div class="calendarClickMenu singleInput form-group">
										<div class="calendarInnerText"><i class="icon-calendar2"></i>
											<input type="text" placeholder="Selecione o dia" class="form-control dateTimePickerInput" id="datepicker" disabled="disabled" name="serviceDate" required>
										</div>
									</div>
									<small id="dateError" class="form-text text-danger d-none">Por favor, selecione o dia.</small>
									<small id="notimeError" class="form-text text-danger d-none">Sem horário disponível para hoje. Selecionar outra data.</small>
								</div>
								<div class="col-lg-6">
									<label for="">Selecione o horário</label>
									<div class="singleInput form-group">
										<select class="custom-select" id="userSelectTiming" name="serviceTiming" disabled="disabled" required>
											<option value="0">Selecione a hora</option>
										</select>
										<span class="iconbadge"><span class="icon-time"></span></span>
										<span class="iconArrow"><span class="icon-cheveron-down"></span></span>
									</div>
									<small id="timeError" class="form-text text-danger d-none">Por favor, selecione o horário.</small>
								</div>
							</div>
							<label id="selectAgentLabel" class="d-none">Selecione o profissional</label>
							<div class="selectAgentMain"></div>
							<div class="btn btn-dark formSubmitBtn disabled" disabled="disabled" id="formContinue">Continuar</div>
						</div>
						<!-- /formDataMain -->
						<div class="alert alert-info" id="alreadyBooked" style="display:none">Já reservou este serviço nesta data/hora.</div>
						<div class="afterContinueMain d-none">
							<div class="afterContinue" style="display: block;">
								<img class="serviceImg" src="" alt="">
								<ul class="serviceDetail">
									<li><h5><span id="serviceTitle"></span></h5></li>
									<!-- <li><span class="labels">Profissional:</span> <span id="agentName"></span></li> -->
									<li><span class="labels">Data:</span> <span id="selectedDate"></span></li>
									<li><span class="labels">Horário:</span> <span id="selectedTime"></span></li>
									<!-- <li><span class="labels">Quantidade de Clientes:</span> <span id="selectedAdults"></span> Adulto - <span id="selectedChildrens"></span> Criança</li> -->
									<!-- <li><span class="labels">Valor do Serviço:</span> R$ <span id="servicePersonPrice"></span></li> -->
									<li><span class="labels">Valor:</span> R$ <span id="serviceTotalPrice"></span></li>
								</ul>
							</div>
							<div class="btn btn-outline-danger btn-block m-t-15 formChange">Alterar opções</div>
							<hr>
							<?php if(!$this->session->userdata('id')){ ?>
								<div class="form-group">
									<label for="fullName">Nome de usuário</label>
									<div class="singleInput">
										<input type="text" id="input-userFullName" class="form-control selectBookNow" placeholder="Nome de usuário" name="userFullName">
									</div>
									<div id="error"></div>
								</div>
								<div class="form-group">
									<label for="userEmail">Email</label>
									<div class="singleInput">
										<input type="email" id="input-userEmail" class="form-control selectBookNow" placeholder="seuemail@email.com" name="userEmail">
									</div>
									<div id="error"></div>
								</div>
								<div class="form-group">
									<label for="userPhone">Telefone</label>
									<div class="singleInput">
										<input type="text" id="input-userPhone" class="form-control selectBookNow" placeholder="912345678" name="userPhone">
									</div>
									<div id="error"></div>
								</div>
							<?php } ?>
							<?php if($this->session->userdata('id') && !$userinfo['phone']){ ?>
								<div class="form-group">
									<label for="userPhone">Telefone</label>
									<div class="singleInput">
										<input type="text" id="input-userPhone" class="form-control selectBookNow" placeholder="912345678" name="userPhone">
									</div>
									<div id="error"></div>
								</div>
							<?php } ?>
							<!-- -->
							<label for="">Selecione o método de pagamento</label>
							<div class="singleInputform form-group">
								<select class="custom-select" name="selectPayment" id="selectMethod" required>
									<option value="0" selected>Dinheiro</option>
									<?php if($stripe['status'] == 1 && $stripe['stripe_publishable_key'] && $stripe['stripe_api_key']){ ?><option value="1">Cartão</option><?php } ?>
								</select>
								<span class="iconbadge"><span class="icon-credit-card"></span></span>
								<span class="iconArrow"><span class="icon-cheveron-down"></span></span>
							</div>
							<div id="payment-card" data-val="1" class="d-none">
								<div id="card-element"><!-- A Stripe Element will be inserted here. --></div>
								<!-- Used to display form errors. -->
								<small id="card-errors" role="alert" class="form-text text-danger"></small>
							</div>
							<!-- -->
							<button class="btn btn-dark formSubmitBtn btn-block" type="submit" id="serviceSubmit" name="submit">
								<span class="loaderBeforeSubmit">Enviar</span>
								<div class="stage d-none"><div class="dot-floating"></div></div>
							</button>
						</div>
						<!-- /afterContinueMain -->
						</form>
					</div>
					<!-- /selectionBoxMain -->
				</div>
			</div>
		</div>
		<div class="<?php echo_if($ads['top']['status'], 'p-t-40') ?>">
			<?php $theme_view('includes/top-ad') ?>
		</div>
	</div>
	<!-- /mainSection -->

	

<?php $theme_view('includes/footer'); ?>
<?php $theme_view('includes/foot'); ?>
<script src="<?php $assets("plugins/moment/moment.min.js"); ?>"></script>
<script src="<?php $assets("plugins/datepicker/bootstrap-datetimepicker.min.js"); ?>"></script>
<script src="<?php $assets("js/magnific.popup.min.js"); ?>"></script>
<?php if($stripe['status'] == 1 && $stripe['stripe_publishable_key'] && $stripe['stripe_api_key']){ ?>
<script src="https://js.stripe.com/v3/"></script>
<script>
	// Stripe Publishable Key.
	var stripe = Stripe('<?php echo $stripe['stripe_publishable_key']; ?>');
</script>
<?php } ?>
<script src="<?php $assets("js/default.js"); ?>"></script>
<?php $theme_view('includes/footEnd'); ?>