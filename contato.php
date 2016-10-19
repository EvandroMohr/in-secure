<?php

include 'header.php';

?>

<div class="container">

	<div class="page-title">
		<h2>
			<span class="fa fa-tasks"></span> Entre em contato conosco
		</h2>
	</div>
	<div class='col-ml-6'>
		<form id="contact-form" method="post" action="#" role="form">
	        <div class="row">
	            <div class="col-md-6">
	                <div class="form-group">
	                    <label for="form_name">Nome *</label>
	                    <input id="form_name" type="text" name="name" class="form-control" placeholder="Por favor, informe seu nome *" required="required" data-error="Firstname is required.">
	                    <div class="help-block with-errors"></div>
	                </div>
	            </div>
	            <div class="col-md-6">
	                <div class="form-group">
	                    <label for="form_lastname">Sobrenome *</label>
	                    <input id="form_lastname" type="text" name="surname" class="form-control" placeholder="Por favor, informe seu sobrenome *" required="required" data-error="Lastname is required.">
	                    <div class="help-block with-errors"></div>
	                </div>
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-md-6">
	                <div class="form-group">
	                    <label for="form_email">Email *</label>
	                    <input id="form_email" type="email" name="email" class="form-control" placeholder="Por favor, informe seu email *" required="required" data-error="Valid email is required.">
	                    <div class="help-block with-errors"></div>
	                </div>
	            </div>
	            <div class="col-md-6">
	                <div class="form-group">
	                    <label for="form_phone">Telefone</label>
	                    <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="Por favor, informe seu telefone">
	                    <div class="help-block with-errors"></div>
	                </div>
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-md-12">
	                <div class="form-group">
	                    <label for="form_message">Mensagem *</label>
	                    <textarea id="form_message" name="message" class="form-control" placeholder="Mensagem para nós *" rows="4" required="required" data-error="Por favor, escreva uma mensagem."></textarea>
	                    <div class="help-block with-errors"></div>
	                </div>
	            </div>
	            <div class="col-md-12">
	                <input type="submit" class="btn btn-success btn-send" value="Enviar mensagem">
	            </div>
	        </div>
	        <br>
	        <div class="row">
	            <div class="col-md-12">
	                <p class="text-muted"><strong>*</strong> Campos requeridos.</p>
	            </div>
	        </div>
		</form>
	</div>



</div>