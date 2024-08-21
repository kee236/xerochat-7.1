<?php
// ... (ส่วนอื่นๆ ของ Controller)

class Email_auto_responder_integration extends BaseController
{
    // ... (ฟังก์ชันอื่นๆ ที่มีอยู่แล้ว)

    // Gemini Integration

    /**
     * Helper method for grid display
     */
    public function gemini_list()
    {
        $data['body'] = "mail_services/gemini/gemini_list"; 
        $data['page_title'] = $this->lang->line("Gemini AI Integration");
        $this->_viewcontroller($data);   
    }

    /**
     * Helper method for grid display
     */
    public function gemini_grid_data()
    {
        if (! $this->input->is_ajax_request()) {
            return $this->customJsonResponse($this->lang->line('Bad Request'));
        }

        $search_value = $this->input->post('search')['value'] ?? null;
        $display_columns = ['id', 'api_key_name', 'api_key', 'status', 'actions'];
        $search_columns = ['api_key_name'];

        $page = (int)($this->input->post('page') ?? 1);
        $start = (int)($this->input->post('start') ?? 0);
        $limit = (int)($this->input->post('length') ?? 10);
        $sort_index = (int)($this->input->post('order')[0]['column'] ?? 0);
        $sort = $display_columns[$sort_index] ?? 'id';
        $order = $this->input->post('order')[0]['dir'] ?? 'desc';
        $order_by = "$sort $order";

        $where = [
            'where' => [
                'user_id' => $this->user_id,
                'service_type' => 'gemini' 
            ]
        ];

        if ($search_value) {
            $where['or_where'] = [];
            foreach ($search_columns as $column) {
                $where['or_where'][$column . ' LIKE '] = "%$search_value%";
            }
        }

        $table = 'mailchimp_config'; // หรือตารางที่คุณใช้เก็บข้อมูล Gemini API
        $group_by = 'id';

        $info = $this->basic->get_data($table, $where, $display_columns, [], $limit, $start, $order_by, $group_by);
        $total_rows_array = $this->basic->count_row($table, $where, $count = $table . '.id', '');
        $total_result = $total_rows_array[0]['total_rows'];

        // เตรียมข้อมูลสำหรับแสดงผลใน Datatable
        foreach ($info as &$row) {
            // ... จัดการข้อมูลในแต่ละแถวตามต้องการ เช่น การตัดข้อความที่ยาวเกินไป หรือการเพิ่มปุ่ม actions
        }

        $data = [
            'draw' => (int)($this->input->post('draw') ?? 0) + 1,
            'recordsTotal' => $total_result,
            'recordsFiltered' => $total_result,
            'data' => $info,
        ];

        return $this->customJsonResponse('', true, $data); // ส่งกลับ JSON response
    }

    public function gemini_add() 
    {
        // ... ตรวจสอบ request และ validation

        $api_key = strip_tags($this->input->post('api_key'));
        $api_key_name = strip_tags($this->input->post('api_key_name'));

        // ... ตรวจสอบ API key กับ Gemini API (อาจต้องสร้างฟังก์ชันหรือ library ใหม่)

        try {
            $this->db->trans_begin();

            $this->basic->insert_data('mailchimp_config', [ // หรือตารางที่คุณใช้เก็บข้อมูล Gemini API
                'user_id' => $this->user_id,
                'service_type' => 'gemini',
                'api_key_name' => $api_key_name,
                'api_key' => $api_key,
                'inserted_at' => date("Y-m-d H:i:s")
            ]);

            $this->db->trans_commit();
        } catch (\Exception $e) {
            $this->db->trans_rollback();
            log_message('error', 'Unable to add Gemini API key.');
            return $this->customJsonResponse($e->getMessage());
        }

        $this->_insert_usage_log(265,1); // ปรับ id ของ log ให้เหมาะสม
        return $this->customJsonResponse($this->lang->line('Your Gemini API key has been added successfully.'), true);
    }

    // ... (ฟังก์ชันอื่นๆ เช่น gemini_edit, gemini_delete, gemini_details)
}
