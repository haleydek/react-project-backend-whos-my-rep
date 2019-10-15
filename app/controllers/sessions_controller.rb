class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])

        if user
            log_in(user)

            render json: user.to_json(
                :include => {
                    :badges => { only: [:id] }
                },
                except: [:created_at, :updated_at]
            )
        else
            render json: { :message => "Incorrect email"}
        end
    end
end
