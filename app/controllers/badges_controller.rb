class BadgesController < ApplicationController
    def index
        badges = Badge.all

        render json: badges.to_json(
            except: [:created_at, :updated_at]
        )
    end
end
