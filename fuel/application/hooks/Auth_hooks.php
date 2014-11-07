<?php
	class Auth_hooks {
		
		function cms_auth() {
			$CI = &get_instance();
			$redirect_to = 'auth/login';
			$location = is_home() ? site_url() : uri_path();
			$pagevars = $CI->fuel->pagevars->retrieve($location);
			if(isset($pagevars)) {
				if(isset($pagevars['auth'])) {
					$CI->load->library('ion_auth');
					if(!$CI->ion_auth->logged_in() && $pagevars['auth'] == 1) {
                        redirect($redirect_to);
					}
				}
			}
		}
	}	