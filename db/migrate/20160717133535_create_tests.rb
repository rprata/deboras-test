class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :gender
      t.string :age
      t.string :hometown
      t.string :occupation
      t.string :education
      t.string :foreign
      t.string :biligual

      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4
      t.string :answer_5
      t.string :answer_6
      t.string :answer_7
      t.string :answer_8
      t.string :answer_9
      t.string :answer_10
      t.string :answer_11
      t.string :answer_12
      t.string :answer_13
      t.string :answer_14
      t.string :answer_15
      t.string :answer_16
      t.string :answer_17
      t.string :answer_18
      t.string :answer_19
      t.string :answer_20
      t.string :answer_21
      t.string :answer_22
      t.string :answer_23
      t.string :answer_24
      t.string :answer_25
      t.string :answer_26
      t.string :answer_27
      t.string :answer_28
      t.string :answer_29
      t.string :answer_30
      t.string :answer_31
      t.string :answer_32
      t.string :answer_33
      t.string :answer_34
      t.string :answer_35
      t.string :answer_36


      t.string :radio_1
      t.string :radio_2
      t.string :radio_3
      t.string :radio_4
      t.string :radio_5
      t.string :radio_6
      t.string :radio_7
      t.string :radio_8
      t.string :radio_9
      t.string :radio_10
      t.string :radio_11
      t.string :radio_12
      t.string :radio_13
      t.string :radio_14
      t.string :radio_15
      t.string :radio_16
      t.string :radio_17
      t.string :radio_18
      t.string :radio_19
      t.string :radio_20
      t.string :radio_21
      t.string :radio_22
      t.string :radio_23
      t.string :radio_24
      t.string :radio_25
      t.string :radio_26
      t.string :radio_27
      t.string :radio_28
      t.string :radio_29
      t.string :radio_30
      t.string :radio_31
      t.string :radio_32
      t.string :radio_33
      t.string :radio_34
      t.string :radio_35
      t.string :radio_36

      
      t.string :correction_1
      t.string :correction_2
      t.string :correction_3
      t.string :correction_4
      t.string :correction_5
      t.string :correction_6
      t.string :correction_7
      t.string :correction_8
      t.string :correction_9
      t.string :correction_10
      t.string :correction_11
      t.string :correction_12
      t.string :correction_13
      t.string :correction_14
      t.string :correction_15
      t.string :correction_16
      t.string :correction_17
      t.string :correction_18
      t.string :correction_19
      t.string :correction_20
      t.string :correction_21
      t.string :correction_22
      t.string :correction_23
      t.string :correction_24
      t.string :correction_25
      t.string :correction_26
      t.string :correction_27
      t.string :correction_28
      t.string :correction_29
      t.string :correction_30
      t.string :correction_31
      t.string :correction_32
      t.string :correction_33
      t.string :correction_34
      t.string :correction_35
      t.string :correction_36

      
      t.integer :wrong_answers
      
      t.timestamps
    end
  end
end
