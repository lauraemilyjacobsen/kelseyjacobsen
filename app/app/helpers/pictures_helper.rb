module PicturesHelper
  def link_to_previous(picture)
    unless picture.previous_picture.nil?
      link_to_remote "<< previous", 
        :url => { :controller => 'pictures', :action => 'show',
            :id => picture.previous_picture.id }, :method => :get,
        :update => "RB_window"
    end
  end
  
  def link_to_next(picture)
    unless picture.next_picture.nil?
      link_to_remote 'next >>',
        :url => { :controller => 'pictures', :action => 'show',
          :id => picture.next_picture.id }, :method => :get,
        :update => 'RB_window'
     end
  end
end
