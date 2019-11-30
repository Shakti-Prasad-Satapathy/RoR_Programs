class NotesController < ApplicationController
  before_action :find_note, only: [:show, :edit, :update, :destroy]


  def index
    @note = current_user.notes.build
    @notes = Note.where(user_id: current_user)
    @search = params["search"]
    if @search.present?
      @name = @search["search"]
      @notes = Note.where(title: @name)
    end
  end

  #def show
  #end

  def new
    @note = current_user.notes.build
  end

  def create
    @note = current_user.notes.build(note_params)

    if @note.save
      #ApplicationMailer.collaboration(@user).deliver
      redirect_to @note
    else
      render "new"
    end
  end

  #def edit
  #end

  def update
    if @note.update(note_params)
      redirect_to @note
    else
      render "edit"
    end
  end

  def destroy
    #@note.destroy
    #redirect_to notes_path
    @comment = @notes.with_deleted.find(params[:id])
    if params[:type] == 'normal'
      @comment.destroy
    elsif params[:type] == 'forever'
      @comment.really_destroy!
    elsif params[:type] == 'undelete'
      @comment.restore
    end
  end

  def trash
    if !@notes.blank?
      for item in @notes
        f.notes.copytitle = item.title
      end
    end
    redirect_to notes_path
  end

  def send_mail
    WelcomeMaile.send_welcome_mail.deliver_now!
  end




  private

  def find_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content)
  end
end
