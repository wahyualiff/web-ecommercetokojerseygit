<?php

class Model_kategori extends CI_Model{
	public function data_home_kits(){
		return $this->db->get_where('tb_barang',array('kategori' => 'home kits'));
	}

	public function data_away(){
		return $this->db->get_where('tb_barang',array('kategori' => 'away'));
	}

	public function data_third_kits(){
		return $this->db->get_where('tb_barang',array('kategori' => 'third_kits'));
	}

	public function data_training(){
		return $this->db->get_where('tb_barang',array('kategori' => 'training'));
	}

	public function data_clothing(){
		return $this->db->get_where('tb_barang',array('kategori' => 'clothing'));
	}
	
	public function data_retro(){
		return $this->db->get_where('tb_barang',array('kategori' => 'retro'));
	}

	public function data_accesoriess(){
		return $this->db->get_where('tb_barang',array('kategori' => 'accesoriess'));
	}
}