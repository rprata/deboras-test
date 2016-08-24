# encoding: UTF-8
class TestsController < ApplicationController

	before_action :require_user, only: [:show, :delete]


	def get_total_wrong_answers(test)
		counter = 0
		if test.answer_1.eql? "logically"
			counter += 1
		end
		if test.answer_2.eql? "past"
			counter += 1
		end
		if test.answer_3.eql? "depicted"
			counter += 1
		end
		if test.answer_4.eql? "Accordingly"
			counter += 1
		end
		if test.answer_5.eql? "used to become"
			counter += 1
		end
		if test.answer_6.eql? "is used to understanding"
			counter += 1
		end
		if test.answer_7.eql? "listened"
			counter += 1
		end
		if test.answer_8.eql? "who"
			counter += 1
		end
		if test.answer_9.eql? "not to exist"
			counter += 1
		end
		if test.answer_10.eql? "Who knows"
			counter += 1
		end
		if test.answer_11.eql? "since"
			counter += 1
		end
		if test.answer_12.eql? "will see"
			counter += 1
		end
		if test.answer_13.eql? "bird"
			counter += 1
		end
		if test.answer_14.eql? "would live"
			counter += 1
		end
		if test.answer_15.eql? "Hurry up"
			counter += 1
		end
		if test.answer_16.eql? "sadness"
			counter += 1
		end
		if test.answer_17.eql? "wouldn’t like"
			counter += 1
		end
		if test.answer_18.eql? "lose"
			counter += 1
		end

		return counter
	end

	def get_morfo_data(test)
		mp = 0
		mnp = 0
		if test.answer_5.eql? "becomes"
			mnp += 1
		elsif test.answer_5.eql? "is becoming"
			mp += 1
		end
		if test.answer_6.eql? "don’t understand"
			mnp += 1
		elsif test.answer_6.eql? "isn’t understanding"
			mp += 1
		end
		if test.answer_9.eql? "doesn’t exist"
			mnp += 1
		elsif test.answer_9.eql? "isn’t existing"
			mp += 1
		end
		if test.answer_12.eql? "see"
			mnp += 1
		elsif test.answer_12.eql? "am seeing"
			mp += 1
		end
		if test.answer_14.eql? "lives"
			mnp += 1
		elsif test.answer_14.eql? "is living"
			mp += 1
		end
		if test.answer_17.eql? "don’t like"
			mnp += 1
		elsif test.answer_17.eql? "am not liking"
			mp += 1
		end
		return [["MP", mp],["MNP", mnp]]
	end

	def new
		@test = Test.new
	end

	def create 
	    @test = Test.new(test_params)
	    @test.wrong_answers = 0
	    if @test.save
	      flash[:success] = "works!"
	      redirect_to '/text'
	    else 
	      ## add error message
	      render 'new'	 
	    end
	end

	def index

	end

	def show 
		@test_result = Test.find(params[:id]) 
	end

	def destroy
		@test = Test.find(params[:id])
		@test.destroy
		redirect_to '/admin'
	end

	def contact
		
	end

	private
	def test_params 
		params.require(:test).permit(:gender,
									 :age,
									 :hometown,
									 :education,
									 :occupation,
									 :foreign,
									 :biligual,
									 :answer_1,
									 :answer_2,
									 :answer_3,
									 :answer_4,
									 :answer_5,
									 :answer_6,
									 :answer_7,
									 :answer_8,
									 :answer_9,
									 :answer_10,
									 :answer_11,
									 :answer_12,
									 :answer_13,
									 :answer_14,
									 :answer_15,
									 :answer_16,
									 :answer_17,
									 :answer_18,
									 :answer_19,
									 :answer_20,
									 :answer_21,
									 :answer_22,
									 :answer_23,
									 :answer_24,
									 :answer_25,
									 :answer_26,
									 :answer_27,
									 :answer_28,
									 :answer_29,
									 :answer_30,
									 :answer_31,
									 :answer_32,
									 :answer_33,
									 :answer_34,
									 :answer_35,
									 :answer_36,	
									 :radio_1,
									 :radio_2,
									 :radio_3,
									 :radio_4,
									 :radio_5,
									 :radio_6,
									 :radio_7,
									 :radio_8,
									 :radio_9,
									 :radio_10,
									 :radio_11,
									 :radio_12,
									 :radio_13,
									 :radio_14,
									 :radio_15,
									 :radio_16,
									 :radio_17,
									 :radio_18,
									 :radio_19,
									 :radio_20,
									 :radio_21,
									 :radio_22,
									 :radio_23,
									 :radio_24,
									 :radio_25,
									 :radio_26,
									 :radio_27,
									 :radio_28,
									 :radio_29,
									 :radio_30,
									 :radio_31,
									 :radio_32,
									 :radio_33,
									 :radio_34,
									 :radio_35,
									 :radio_36,
                                   	 :correction_1,
                                   	 :correction_2,
                                   	 :correction_3,
                                   	 :correction_4,
                                   	 :correction_5,
                                   	 :correction_6,
                                   	 :correction_7,
                                   	 :correction_8,
                                   	 :correction_9,
                                   	 :correction_10,
                                   	 :correction_11,
                                   	 :correction_12,
                                   	 :correction_13,
                                   	 :correction_14,
                                   	 :correction_15,
                                  	 :correction_16,
                                  	 :correction_17,
                                  	 :correction_18,
                                  	 :correction_19,
                                  	 :correction_20,
                                  	 :correction_21,
                                  	 :correction_22,
                                  	 :correction_23,
                                  	 :correction_24,
                                  	 :correction_25,
                                  	 :correction_26,
                                  	 :correction_27,
                                  	 :correction_28,
                                  	 :correction_29,
                                  	 :correction_30,
                                  	 :correction_31,
                                  	 :correction_32,
                                  	 :correction_33,
                                  	 :correction_34,
                                  	 :correction_35,
                                  	 :correction_36,      									       									 								 
									 :wrong_answers,
									 ) 
	end

end
