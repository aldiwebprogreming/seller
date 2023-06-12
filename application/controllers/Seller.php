<?php 	

		/**
		 * 
		 */
		class Seller extends CI_Controller
		{
			
			function __construct()
			{
				parent::__construct();
			}

			function index(){

				$this->load->view('template_seller/header');
				$this->load->view('seller/index');
				$this->load->view('template_seller/footer');

			}
		}
	?>