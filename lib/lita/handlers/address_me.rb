module Lita
  module Handlers
    class AddressMe < Handler
      config(:office_address, type: String, required: true)

      route(/address me/, :show_address, command: true, help: {
        'address me' => 'Responds with the address of the office.'
      })
      
      def show_address(message) 
        message.reply(config.office_address)
      end
       
      Lita.register_handler(self)
    end
  end
end
