module OAuth2
  module Strategy
    class AuthCode
      def get_token(code, params = {}, opts = {})
        params[:redirect_uri] = params[:redirect_uri].split('?').first if params.has_key? :redirect_uri
        params = {
            'grant_type' => 'authorization_code',
            'code' => code
        }.merge(client_params).merge(params)
        @client.get_token(params, opts)
      end

      def authorize_params(params = {})
        params.merge('response_type' => 'code', 'client_id' => @client.id)
      end

      def authorize_url(params = {})
        @client.authorize_url(authorize_params.merge(params))
      end
    end
  end
end
