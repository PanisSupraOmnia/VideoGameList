module UsersHelper
  def link_steam_account_from_omniauth(user, omniauth_response)
    # If one already exists, don't create it.
    # If not, create it and pass in the steam_id and steam_profile_url.
    ExternalAccount.create_with(
      steam_id: omniauth_response[:uid],
      steam_profile_url: omniauth_response[:extra][:raw_info][:profileurl]
    ).find_or_create_by!(
      user_id: user.id,
      account_type: omniauth_response[:provider].to_sym
    )
  end
end
