RailsAdmin.config do |config|

  ### Popular gems integration
  # config.authenticate_with do
  #   authenticate_or_request_with_http_basic('Login') do |username, password|
  #     username == 'admin' && password == 'clappingape'
  #   end
  # end
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.excluded_models << 'Admin'
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    bulk_delete 
    show
    edit
    delete 
    # do
    #     except ['Client']
    # end
    # show_in_app
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.model 'Client' do
    label_plural 'Clients'
      # field :id
      # field :name
      # field :created_at 
      # field :updated_at
  end
  config.model 'Projek' do
    label_plural 'Projects'
      # field :id
      # field :name
      # field :staging_url
      # field :production_url
      # field :username
      # field :password
      # field :created_at 
      # field :updated_at
  end              
end
