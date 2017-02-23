class ConversationsController < ApplicationController
  before_filter :require_login
  before_filter :get_mailbox
  before_action :get_conversation, except: [:index]

  def index
    if @box.eql? "inbox"
      @conversations = @mailbox.inbox.paginate(page: params[:page], per_page: 10)
    elsif @box.eql? "sentbox"
      @conversations = @mailbox.sentbox.paginate(page: params[:page], per_page: 10)
    else
      @conversations = @mailbox.trash.paginate(page: params[:page], per_page: 10)
    end

    respond_to do |format|
      format.html { render @conversations if request.xhr? }
    end
  end

  def show
    if @box.eql? 'trash'
      @receipts = @mailbox.receipts_for(@conversation).trash
    else
      @receipts = @mailbox.receipts_for(@conversation).not_trash
    end
    render :action => :show
    @receipts.mark_as_read
  end

  def update
    if params[:untrash].present?
    @conversation.untrash(@user)
    end

    if params[:reply_all].present?
      last_receipt = @mailbox.receipts_for(@conversation).last
      @receipt = @user.reply_to_all(last_receipt, params[:body])
    end

    if @box.eql? 'trash'
      @receipts = @mailbox.receipts_for(@conversation).trash
    else
      @receipts = @mailbox.receipts_for(@conversation).not_trash
    end
    redirect_to :action => :show
    @receipts.mark_as_read

  end

  def destroy

    @conversation.move_to_trash(@user)

    respond_to do |format|
      format.html {
        if params[:location].present? and params[:location] == 'conversation'
          redirect_to conversations_path(:box => :trash)
	else
          redirect_to conversations_path(:box => @box,:page => params[:page])
	end
      }
      format.js {
        if params[:location].present? and params[:location] == 'conversation'
          render :js => "window.location = '#{conversations_path(:box => @box,:page => params[:page])}';"
	else
          render 'conversations/destroy'
	end
      }
    end
  end

  private

  def get_mailbox
    @mailbox = current_user.mailbox
  end

  def get_box
    if params[:box].blank? or !["inbox","sentbox","trash"].include?params[:box]
      params[:box] = 'inbox'
    end

    @box = params[:box]
  end

  def get_conversation
    @conversation ||= @mailbox.conversations.find(params[:id])
  end

  def check_current_subject_in_conversation
    @conversation = Conversation.find_by_id(params[:id])

    if @conversation.nil? or !@conversation.is_participant?(@user)
      redirect_to conversations_path(:box => @box)
    return
    end
  end

end