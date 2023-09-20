class RecturesController < ApplicationController
    before_action :authenticate_user!

    def create
        company = Company.find(params[:company_id])
        recture = company.rectures.build(recture_params) #buildを使い、contentとtweet_idの二つを同時に代入
        recture.user_id = current_user.id
        if recture.save
            flash[:success] = "コメントしました"
            redirect_back(fallback_location: root_path) #直前のページにリダイレクト
        else
            flash[:success] = "コメントできませんでした"
            redirect_back(fallback_location: root_path) #直前のページにリダイレクト
        end
    end

    private

    def recture_params
        params.require(:recture).permit(:content)
    end
end
