class NotabLiSupport::StackOverflow
  class QuestionGetResponse < ::NotabLi::Strategies
    def self.open?
      true
    end

    def self.preferences
      %w{question_id} # TODO Add ability to choose form elements
    end

    def self.preferences_meet_criterion(user_preferences, notification_criterion)
      if user_preferences[:question_id].to_s == notification_criterion[:question_id]
        true
      else
        false
      end
    end

    def create_noteboard_for_user
      sleep 2
      response_hash = self.class.open? ? {open: true} : {uid: 11, external_noteboard_id: 22}
    end

    def update_noteboard_for_user
      return true
    end

    def check_noteboard_for_user
      sleep 2 # post to notifier server
    end

    def destroy_noteboard_for_user
      return true
    end

    def destroy_user_and_all_noteboards
      return true
    end
  end
end
