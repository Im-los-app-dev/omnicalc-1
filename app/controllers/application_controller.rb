class ApplicationController < ActionController::Base
  
  def homepage



  end
  def blank_square_form



    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
# params is the hash data storage from inputs

    @num = params.fetch("results").to_f
    @square_of_num = @num ** 2


    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  #Square Root

  def blank_root_form


    render({ :template => "calculation_templates/root_form.html.erb"})
  end


  def calculate_root

    @rnum = params.fetch("user_number")
    @sqrt = @rnum.to_f ** 0.5


    render({ :template=> "calculation_templates/root_results.html.erb"})
  end

   #Payment

   def blank_payment_form


    render({ :template => "calculation_templates/payment_form.html.erb"})
  end


  def calculate_payment

    @apr = params.fetch("user_apr").to_f/100
    @nyr = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_i

    @period = @nyr*12
    @rate = @apr/12
    @present_apr = @apr*100


    @payment = (@rate*(@pv)) / (1- ( (1+@rate)**(@period*-1 ))   )


    render({ :template=> "calculation_templates/payment_results.html.erb"})
  end

  #Random

  def blank_random_form


    render ( { :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random

    @max = params.fetch("user_max").to_f
    @min = params.fetch("user_min").to_f

    @rand_num = rand(@min..@max)

    render ( { :template => "calculation_templates/random_results.html.erb"})
  end




end
