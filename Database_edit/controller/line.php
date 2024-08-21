<?php

class ChatbotController extends Controller
{
    // ... (ฟังก์ชันอื่นๆ)

    public function handleChat($userId, $message) {
        // ... (logic for getting response from AI)

        // ส่งการแจ้งเตือนผ่าน LINE Notify (ถ้ามีการตั้งค่า)
        $this->sendLineNotifyNotification($userId, $response);

        // ... (บันทึกและส่งกลับ response)
    }

    protected function sendLineNotifyNotification($userId, $message) {
        $lineNotifyConfig = DB::table('line_notify_config')
            ->where('user_id', $userId)
            ->where('status', '1')
            ->first();

        if ($lineNotifyConfig) {
            $lineNotifyApi = new LineNotifyApi($lineNotifyConfig->access_token);
            $lineNotifyApi->sendNotification($message);
        }
    }
}
