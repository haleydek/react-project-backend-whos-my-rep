class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])

        render json: user.to_json(
            except: [:created_at, :updated_at],
            methods: :badge_ids
        )
    end
end
