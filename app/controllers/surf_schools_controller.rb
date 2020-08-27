class SurfSchoolsController < ApplicationController
  def index
    @surf_schools = Surf_school.all
  end

  def show
  end

  def update
  end

  private

  def find_surf_school
    @surf_school = Surf_school.find(params[:id])
  end

  def surf_school_params
    params.require(:surf_school).permit(:name, :msw_id, :description, :website, :address, :phone_number, :opening_hours, :meeting_point, :lesson_type, :rental_price_tendancy, :lesson_price_tendancy)
  end
end
