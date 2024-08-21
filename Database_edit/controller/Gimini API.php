public function handleChat($userId, $message) {
    // ... (ดึงการตั้งค่าและ prompt)

    // ดึงข้อมูล Gemini API จากฐานข้อมูล
    $geminiConfig = DB::table('gemini_config')
        ->where('user_id', $userId)
        ->where('status', '1')
        ->first();

    if (!$geminiConfig) {
        return 'Gemini API not configured.'; // หรือแจ้งเตือนผู้ใช้ให้ตั้งค่า API
    }

    $geminiApi = new GeminiApi($geminiConfig->api_key);
    $response = $geminiApi->generateText($prompt, $geminiConfig->model, [
        // ... other options
    ]);

    // ... (บันทึกและส่งกลับ response)
}
