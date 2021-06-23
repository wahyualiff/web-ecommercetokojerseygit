<?php

class Kategori extends CI_Controller{
	public function home_kits()
	{
		$data['home_kits'] = $this->model_kategori->data_home_kits()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('home_kits', $data);
		$this->load->view('templates/footer');
	}
	public function away()
	{
		$data['away'] = $this->model_kategori->data_away()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('away', $data);
		$this->load->view('templates/footer');
	}
		public function third_kits()
	{
		$data['third_kits'] = $this->model_kategori->data_third_kits()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('third_kits', $data);
		$this->load->view('templates/footer');
	}

		public function training()
	{
		$data['training'] = $this->model_kategori->data_training()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('training', $data);
		$this->load->view('templates/footer');
	}

	public function clothing()
	{
		$data['clothing'] = $this->model_kategori->data_clothing()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('clothing', $data);
		$this->load->view('templates/footer');
	}

	public function retro()
	{
		$data['retro'] = $this->model_kategori->data_retro()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('retro', $data);
		$this->load->view('templates/footer');
	}

	public function accesoriess()
	{
		$data['accesoriess'] = $this->model_kategori->data_accesoriess()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('accesoriess', $data);
		$this->load->view('templates/footer');
	}
}