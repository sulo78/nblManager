module LendingsHelper

  def current_notebook
    Notebook.find(params[:id])
  end
  
end
