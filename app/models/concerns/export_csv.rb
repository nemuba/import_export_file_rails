# frozen_string_literal: true

# module ExportCSV
module ExportCsv
  extend ActiveSupport::Concern

  # module ClassMethods
  module ClassMethods
    def to_csv
      require 'csv'
      options = { col_sep: ';', encoding: 'utf-8' }
      headers = %i[id title]

      CSV.generate(headers: true, **options) do |csv|
        csv << headers

        all.each do |note|
          csv << [note.id, note.title]
        end
      end
    end
  end
end
