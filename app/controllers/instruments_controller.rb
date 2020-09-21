class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.all
    end

    def show
        @instrument = Instrument.find(params[:id])
    end

    def new
        @instrument = Instrument.new
    end

    def create
        @instrument = Instrument.create(inst_params)
        redirect_to instrument_path(@instrument)
    end

    def edit
        @instrument = Instrument.find(params[:id])
    end

    def update
        @instrument = Instrument.update(inst_params)
        redirect_to instrument_path(@instrument)
    end

    private

    def inst_params
        params.require(:instrument).permit(:name, :classification)
    end

end
