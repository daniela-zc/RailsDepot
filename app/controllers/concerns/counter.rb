module Counter
	private

	def set_counter
		if session[:store_counter].nil?
			session[:store_counter] = 0
		end

		session[:store_counter] += 1
		@store_counter = session[:store_counter]
	end

	def reset_counter
		session[:store_counter] = 0
		@store_counter = session[:store_counter]
	end
end
