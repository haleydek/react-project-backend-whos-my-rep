class UsersController < ApplicationController
    def create
        new_user = User.new(first_name: params[:firstName], email: params[:email])

        if new_user.save!
            log_in(new_user)

            render json: new_user.to_json(
                except: [:created_at, :updated_at],
                methods: :badge_ids
            )
        else
            render json: { :message => errors.full_messages.join(". ") }
        end
    end

    def update
        user = User.find_by(id: params[:id])
        badge = Badge.find_by(id: params[:badge_id])

        if user && badge
            user.delete_or_add_badge(badge)

            render json: user.to_json(only: :id, methods: :badge_ids)
        else
            render json: { :message => "User and/or badge not found" }
        end
    end

    def show
        user = User.find_by(id: params[:id])

        if user
            log_in(user)

            render json: user.to_json(
                except: [:created_at, :updated_at],
                methods: :badge_ids
            )
        else
            render json: { :message => "User not found" }
        end
    end
end
