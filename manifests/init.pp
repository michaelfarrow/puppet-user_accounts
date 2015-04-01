class user_accounts {

	class { 'accounts':
		accounts   => hiera_hash('accounts::accounts', {}),
		ssh_keys   => hiera_hash('accounts::ssh_keys', {}),
		users      => hiera_hash('accounts::users', {}),
		groups     => hiera_hash('accounts::groups', {}),
	}

}
