class FileImportsController < ApplicationController
	require 'csv'

	def new
		@file_import = FileImport.new
	end

	def create
    @csv_import = CSVLib.new # CSV::Reader.parse(params[:file]) #.import(params[:file])
    # debugger
    if @csv_import
      redirect_to transactions_path
    else
      render :action => "new"
    end
	end

end
