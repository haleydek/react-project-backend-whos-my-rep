class UsersController < ApplicationController
    def create
        new_user = User.new(first_name: params[:firstName], email: params[:email])

        if new_user.save!
            render json: new_user.to_json(
                except: [:created_at, :updated_at],
                methods: :badge_ids
            )
        else
            render json: { :message => errors.full_messages.join(". ") }
        end
    end

    def show
        user = User.find_by(id: params[:id])

        render json: user.to_json(
            except: [:created_at, :updated_at],
            methods: :badge_ids
        )
    end
end
