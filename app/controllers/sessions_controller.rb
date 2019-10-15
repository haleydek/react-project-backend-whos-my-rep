class SessionsController < ApplicationController
    def create
        byebug
        user = User.find_by(email: params[:email])

        if user
            log_in(user)

            render json: user.to_json(
                except: [:created_at, :updated_at],
                methods: :badge_ids
            )
        else
            render json: { :message => "Incorrect email"}
        end
    end

    def destroy
        session.delete(:user_id)

        render json: { :message => "Successfully logged out."}
    end
end
