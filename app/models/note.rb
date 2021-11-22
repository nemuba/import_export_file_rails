# frozen_string_literal: true

# model Note
class Note < ApplicationRecord
  include ExportCsv
  include ExportPdf
  include ImportFile
end
