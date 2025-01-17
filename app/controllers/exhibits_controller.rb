class ExhibitsController < ApplicationController
  def index
    @exhibits = Exhibit.all
  end

  def show
  end

  def new
      @exhibit = Exhibit.new
  end

  def create
      puts 
      puts "hello from create method in Exhihibit model"
      puts 
      puts params.inspect
      puts 
      @exhibit = Exhibit.create(name: params[:exhibit][:name],
        description: params[:exhibit][:description],
        date: params[:exhibit][:date])


     
      # if @exhibit.save
      #     redirect_to exhibits_index_path
      #     flash[:notice] = "Exhibit successfully saved."
      # end
  end

  def edit
    @exhibit = Exhibit.find(params[:exhibit])

    
      

  end

  def update
    puts 
    puts "exhibit exist?"
    puts @exhibit.inspect


    @exhibit.update(name: params[:exhibit][:name],
        description: params[:exhibit][:description],
        date: params[:exhibit][:date],
        file: params[:exhibit][:file])

    if @exhibit.update 
        redirect_to exhibits_index_path
          flash[:notice] = "Exhibit successfully updated."
    end
  end

  def destroy
      @exhibit = Exhibit.find(params[:exhibit])
      puts "inside destory method of the exhibits controller."
      puts " we have #{params.inspect}"
      
      if @exhibit.destroy!
        redirect_to exhibits_index_path
        flash[:notice] = "Exhibit has been destroyed."
      end 
  end
end
