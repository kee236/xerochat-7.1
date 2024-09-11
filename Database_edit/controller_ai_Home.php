


public function set_module_ids($data=[]){
        $data['module_id_token'] = $this->module_id_token;
        $data['module_id_image'] = $this->module_id_image;
        $data['module_id_audio'] = $this->module_id_audio;
        $data['module_id_team_member'] = $this->module_id_team_member;
        $data['module_id_settings'] = $this->module_id_settings;
        $data['module_id_template_manager'] = $this->module_id_template_manager;
        $data['module_id_affiliate_system'] = $this->module_id_affiliate_system;
        $data['ai_livechat'] = $this->ai_livechat;
        return $data;
    }