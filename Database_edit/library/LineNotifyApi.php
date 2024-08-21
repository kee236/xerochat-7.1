namespace App\Libraries;

class LineNotifyApi
{
    protected $accessToken;

    public function __construct($accessToken)
    {
        $this->accessToken = $accessToken;
    }

    public function sendNotification($message)
    {
        $url = 'https://notify-api.line.me/api/notify';
        $headers = [
            'Content-Type: application/x-www-form-urlencoded',
            'Authorization: Bearer ' . $this->accessToken
        ];
        $data = ['message' => $message];

        $response = $this->sendRequest($url, $data, $headers);
        return $response;
    }

    protected function sendRequest($url, $data, $headers)
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        $response = curl_exec($ch);
        curl_close($ch);

        return $response;
    }
}